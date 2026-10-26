#!/usr/bin/env python3
"""Build LinnStrumentScaleLights.maxpat and .amxd without Max.

The .amxd is the container Live 12's Max 9.1 line reads: a 32-byte
ampf/ptch header followed by the JSON patcher. The type code is mmmm,
a MIDI effect. aaaa would make Live treat the file as an audio effect
and leave midiout disconnected from the track's MIDI To.
"""

import json
import struct
from pathlib import Path

from scale_logic import NRPN_GAP_MS, masks

ROOT = Path(__file__).resolve().parents[1]
MAXPAT_PATH = ROOT / "LinnStrumentScaleLights.maxpat"
AMXD_PATH = ROOT / "LinnStrumentScaleLights.amxd"

APPVERSION = {
    "major": 9,
    "minor": 1,
    "revision": 4,
    "architecture": "x64",
    "modernui": 1,
}

NOTE_NAMES = ("C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B")

# LinnStrument global page, top row first. Bottom row is C, C#, D.
# Live's device view is 169 pixels tall, so the grid and the controls share that.
DEVICE_HEIGHT = 169
GRID_ROWS = ((9, 10, 11), (6, 7, 8), (3, 4, 5), (0, 1, 2))
GRID_ORIGIN = (4, 6)
CELL_SIZE = (46, 36)
CELL_GAP = 4
UI_FONT = "Ableton Sans"

# Off uses the dark LCD background. On uses Control On (the device on/off yellow)
# or Control On Variant 2 (cyan). Text on those light fills is black, not the LCD grey.
# Both active* and inactive bg/text attributes are set because non-parameter live.text
# boxes in Live can render with bgoncolor/bgcolor/textcolor/textoffcolor.
DARK_RGBA = "0.156863 0.156863 0.156863 1."
YELLOW_RGBA = "1. 0.709804 0.196078 1."
CYAN_RGBA = "0. 0.933333 1. 1."
DIM_TEXT_RGBA = "0.807843 0.807843 0.807843 1."
INK_TEXT_RGBA = "0. 0. 0. 1."

DARK_BG = f"activebgcolor {DARK_RGBA}"
DARK_BG_INACTIVE = f"bgcolor {DARK_RGBA}"
YELLOW_ON = f"activebgoncolor {YELLOW_RGBA}"
YELLOW_ON_INACTIVE = f"bgoncolor {YELLOW_RGBA}"
CYAN_ON = f"activebgoncolor {CYAN_RGBA}"
CYAN_ON_INACTIVE = f"bgoncolor {CYAN_RGBA}"
DIM_TEXT = f"activetextcolor {DIM_TEXT_RGBA}"
DIM_TEXT_INACTIVE = f"textoffcolor {DIM_TEXT_RGBA}"
INK_TEXT = f"activetextoncolor {INK_TEXT_RGBA}"
INK_TEXT_INACTIVE = f"textcolor {INK_TEXT_RGBA}"

PAD_STEPS = (
    (DARK_BG, DARK_BG_INACTIVE, DIM_TEXT, DIM_TEXT_INACTIVE, "set 0"),
    (YELLOW_ON, YELLOW_ON_INACTIVE, INK_TEXT, INK_TEXT_INACTIVE, "set 1"),
    (CYAN_ON, CYAN_ON_INACTIVE, INK_TEXT, INK_TEXT_INACTIVE, "set 1"),
)
THEME_COLORS = (
    ("live_lcd_bg", "set_bg_off", "activebgcolor", "bg_0"),
    ("live_lcd_bg", "set_bgi_off", "bgcolor", "bgi_0"),
    ("live_control_selection", "set_bg_yellow", "activebgoncolor", "bg_1"),
    ("live_control_selection", "set_bgi_yellow", "bgoncolor", "bgi_1"),
    ("live_control_selection_alt", "set_bg_cyan", "activebgoncolor", "bg_2"),
    ("live_control_selection_alt", "set_bgi_cyan", "bgoncolor", "bgi_2"),
    ("live_lcd_title", "set_fg_off", "activetextcolor", "fg_0"),
    ("live_lcd_title", "set_fgi_off", "textoffcolor", "fgi_0"),
)
SCALE_PURPLE = [0.745098, 0.596078, 1.0, 1.0]
DEFAULT_MANUAL_MASK = " ".join(str(v) for v in masks(1, 0, [0, 2, 4, 5, 7, 9, 11]))


def _grid_size():
    width = 3 * CELL_SIZE[0] + 2 * CELL_GAP
    height = 4 * CELL_SIZE[1] + 3 * CELL_GAP
    return width, height


class Patch:
    def __init__(self):
        self.boxes = []
        self.lines = []
        self.io = {}
        self.vars = {}
        self._n = 0

    def box(self, maxclass, text=None, nin=None, nout=None, outlettype=None, varname=None, **extra):
        if nin is None or nout is None:
            raise ValueError(f"io required for {text or maxclass}")
        self._n += 1
        oid = f"obj-{self._n}"
        box = {
            "id": oid,
            "maxclass": maxclass,
            "numinlets": nin,
            "numoutlets": nout,
            "outlettype": list(outlettype) if outlettype is not None else [""] * nout,
        }
        if text is not None:
            box["text"] = text
        if varname:
            if varname in self.vars:
                raise ValueError(f"duplicate varname {varname}")
            box["varname"] = varname
            self.vars[varname] = oid
        box.update(extra)
        self.boxes.append({"box": box})
        self.io[oid] = (nin, nout)
        return oid

    def connect(self, src, src_outlet, dst, dst_inlet):
        _sn, so = self.io[src]
        dn, _do = self.io[dst]
        if not 0 <= src_outlet < so:
            raise IndexError(f"{src} outlet {src_outlet} of {so} ({self._label(src)})")
        if not 0 <= dst_inlet < dn:
            raise IndexError(f"{dst} inlet {dst_inlet} of {dn} ({self._label(dst)})")
        self.lines.append({
            "patchline": {
                "source": [src, src_outlet],
                "destination": [dst, dst_inlet],
            }
        })

    def _label(self, oid):
        for wrapped in self.boxes:
            if wrapped["box"]["id"] == oid:
                return wrapped["box"].get("varname") or wrapped["box"].get("text") or oid
        return oid

    def obj(self, text, x, y, nin, nout, varname=None, **extra):
        return self.box(
            "newobj", text, nin=nin, nout=nout, varname=varname,
            patching_rect=[float(x), float(y), max(48.0, 7.0 * len(text) + 16.0), 22.0],
            **extra,
        )

    def message(self, text, x, y, varname=None, **extra):
        return self.box(
            "message", text, nin=2, nout=1, varname=varname,
            patching_rect=[float(x), float(y), max(36.0, 6.6 * len(text) + 16.0), 22.0],
            **extra,
        )

    def comment(self, text, x, y, w, h, varname=None, **extra):
        return self.box(
            "comment", text, nin=1, nout=0, outlettype=[], varname=varname,
            patching_rect=[float(x), float(y), float(w), float(h)],
            **extra,
        )

    def trigger(self, spec, x, y, varname=None):
        return self.obj("t " + spec, x, y, nin=1, nout=len(spec.split()), varname=varname)

    def as_dict(self, rect, presentation=False):
        return {
            "fileversion": 1,
            "appversion": APPVERSION,
            "classnamespace": "box",
            "rect": rect,
            "openinpresentation": 1 if presentation else 0,
            "default_fontsize": 12.0,
            "default_fontface": 0,
            "default_fontname": "Arial",
            "gridonopen": 1,
            "gridsize": [15.0, 15.0],
            "gridsnaponopen": 1,
            "objectsnaponopen": 1,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "boxes": self.boxes,
            "lines": self.lines,
        }

    def require(self, src_name, src_outlet, dst_name, dst_inlet):
        src = self.vars[src_name]
        dst = self.vars[dst_name]
        want = [src, src_outlet]
        got = [line["patchline"]["destination"] for line in self.lines
               if line["patchline"]["source"] == want]
        if [dst, dst_inlet] not in got:
            raise AssertionError(f"missing {src_name}:{src_outlet} -> {dst_name}:{dst_inlet}")


def build_engine():
    p = Patch()

    def inlet(index, comment, y):
        # Max subpatcher inlet/outlet "index" is 1-based (1..N).
        return p.box(
            "inlet", None, nin=0, nout=1, index=index + 1, comment=comment,
            patching_rect=[24.0, float(y), 110.0, 22.0],
            varname=f"in_{index}",
        )

    def outlet(index, comment, x, y):
        return p.box(
            "outlet", None, nin=1, nout=0, outlettype=[], index=index + 1, comment=comment,
            patching_rect=[float(x), float(y), 100.0, 22.0],
            varname=f"out_{index}",
        )

    inlet(0, "scale_mode", 28)
    inlet(1, "root_note", 68)
    inlet(2, "scale_name, display only", 108)
    inlet(3, "scale_intervals", 148)
    inlet(4, "MIDI channel", 188)
    inlet(5, "device enabled", 228)
    inlet(6, "follow Live scale", 268)
    inlet(7, "manual light mask", 308)
    outlet(0, "MIDI bytes", 1680, 28)
    outlet(1, "Main C-B then Accent C-B", 1680, 68)

    mode_int = "mode_int"
    root_int = "root_int"
    p.obj("int", 250, 28, 2, 1, varname=mode_int)
    p.obj("int", 250, 68, 2, 1, varname=root_int)
    p.obj("int", 360, 28, 2, 1, varname="flag_mode")
    p.obj("int", 360, 68, 2, 1, varname="flag_root")
    p.obj("int", 360, 148, 2, 1, varname="flag_intervals")
    p.obj("int", 560, 188, 2, 1, varname="len_int")
    p.obj("zl.reg", 700, 148, 2, 1, varname="reg_intervals")
    p.obj("int", 250, 188, 2, 1, varname="channel_int")
    p.obj("int", 250, 228, 2, 1, varname="enabled_int")
    p.obj("zl.len", 460, 188, 1, 1, varname="zl_len")
    p.obj("loadmess 1", 24, 268, 0, 1, varname="load_channel")
    p.obj("delay 50", 900, 28, 2, 1, varname="delay_debounce")

    p.trigger("i 1 b", 130, 28, varname="t_mode")
    p.trigger("i 1 b", 130, 68, varname="t_root")
    p.trigger("b", 130, 108, varname="t_name")
    p.trigger("l l 1 b", 130, 148, varname="t_intervals")
    p.trigger("i b", 130, 188, varname="t_channel")
    p.trigger("i i", 130, 228, varname="t_enabled")

    p.connect(p.vars["in_0"], 0, p.vars["t_mode"], 0)
    p.connect(p.vars["t_mode"], 2, p.vars["delay_debounce"], 0)
    p.connect(p.vars["t_mode"], 1, p.vars["flag_mode"], 1)
    p.connect(p.vars["t_mode"], 0, p.vars["mode_int"], 1)
    p.connect(p.vars["in_1"], 0, p.vars["t_root"], 0)
    p.connect(p.vars["t_root"], 2, p.vars["delay_debounce"], 0)
    p.connect(p.vars["t_root"], 1, p.vars["flag_root"], 1)
    p.connect(p.vars["t_root"], 0, p.vars["root_int"], 1)
    p.connect(p.vars["in_2"], 0, p.vars["t_name"], 0)
    p.connect(p.vars["t_name"], 0, p.vars["delay_debounce"], 0)
    p.connect(p.vars["in_3"], 0, p.vars["t_intervals"], 0)
    p.connect(p.vars["t_intervals"], 3, p.vars["delay_debounce"], 0)
    p.connect(p.vars["t_intervals"], 2, p.vars["flag_intervals"], 1)
    p.connect(p.vars["t_intervals"], 1, p.vars["zl_len"], 0)
    p.connect(p.vars["zl_len"], 0, p.vars["len_int"], 1)
    p.connect(p.vars["t_intervals"], 0, p.vars["reg_intervals"], 0)
    p.connect(p.vars["in_4"], 0, p.vars["t_channel"], 0)
    p.connect(p.vars["t_channel"], 1, p.vars["delay_debounce"], 0)
    p.connect(p.vars["t_channel"], 0, p.vars["channel_int"], 1)
    p.connect(p.vars["load_channel"], 0, p.vars["channel_int"], 1)

    # gate: left inlet selects the open outlet (0 closed, 1 open). Right inlet is the message.
    p.obj("gate", 1400, 228, 2, 1, varname="enabled_gate")
    p.message("stop", 560, 228, varname="msg_stop")
    p.obj("sel 0", 400, 228, 2, 2, varname="sel_enabled_off")
    p.obj(f"delay {NRPN_GAP_MS}", 1400, 268, 2, 1, varname="delay_gap")
    p.connect(p.vars["in_5"], 0, p.vars["t_enabled"], 0)
    p.connect(p.vars["t_enabled"], 1, p.vars["sel_enabled_off"], 0)
    p.connect(p.vars["t_enabled"], 1, p.vars["enabled_gate"], 0)
    p.connect(p.vars["t_enabled"], 0, p.vars["enabled_int"], 1)
    p.connect(p.vars["sel_enabled_off"], 0, p.vars["msg_stop"], 0)
    p.connect(p.vars["msg_stop"], 0, p.vars["delay_gap"], 0)

    p.trigger("b b b", 900, 80, varname="t_ready")
    p.obj("expr $i1 * $i2 * $i3", 1060, 80, 3, 1, varname="expr_ready")
    p.obj("sel 1", 1260, 80, 2, 2, varname="sel_ready")
    p.obj("sel 1", 1400, 80, 2, 2, varname="sel_enabled_go")
    p.connect(p.vars["delay_debounce"], 0, p.vars["t_ready"], 0)
    p.connect(p.vars["t_ready"], 2, p.vars["flag_intervals"], 0)
    p.connect(p.vars["t_ready"], 1, p.vars["flag_root"], 0)
    p.connect(p.vars["t_ready"], 0, p.vars["flag_mode"], 0)
    p.connect(p.vars["flag_intervals"], 0, p.vars["expr_ready"], 2)
    p.connect(p.vars["flag_root"], 0, p.vars["expr_ready"], 1)
    p.connect(p.vars["flag_mode"], 0, p.vars["expr_ready"], 0)
    p.connect(p.vars["expr_ready"], 0, p.vars["sel_ready"], 0)
    p.connect(p.vars["sel_ready"], 0, p.vars["enabled_int"], 0)
    p.connect(p.vars["enabled_int"], 0, p.vars["sel_enabled_go"], 0)

    p.trigger("b b", 900, 320, varname="t_build")
    p.obj("expr (($i1 % 12) + 12) % 12", 400, 320, 1, 1, varname="expr_root")
    p.obj("int", 660, 320, 2, 1, varname="root_pc")

    p.obj("+ 0", 820, 360, 2, 1, varname="plus_root")
    p.obj("!= 0", 900, 360, 2, 1, varname="not_root")
    p.obj("pack 0 1", 980, 360, 2, 1, varname="pack_accent")
    p.obj("route 0 1 2 3 4 5 6 7 8 9 10 11", 980, 410, 2, 13, varname="route_accent")
    p.connect(p.vars["root_int"], 0, p.vars["expr_root"], 0)
    p.connect(p.vars["expr_root"], 0, p.vars["root_pc"], 0)
    p.connect(p.vars["root_pc"], 0, p.vars["plus_root"], 1)
    p.connect(p.vars["root_pc"], 0, p.vars["not_root"], 1)
    p.connect(p.vars["root_pc"], 0, p.vars["pack_accent"], 0)
    p.connect(p.vars["pack_accent"], 0, p.vars["route_accent"], 0)

    p.connect(p.vars["sel_enabled_go"], 0, p.vars["t_build"], 0)
    p.connect(p.vars["t_build"], 1, p.vars["root_int"], 0)

    off_text = " ".join(str(v) for v in masks(0, 0, []))
    p.message(off_text, 250, 540, varname="mode_off_msg")
    p.obj("sel 0 1", 130, 540, 2, 3, varname="sel_mode")
    p.trigger("b b b", 400, 540, varname="t_mode_on")
    p.connect(p.vars["t_build"], 0, p.vars["mode_int"], 0)
    p.connect(p.vars["mode_int"], 0, p.vars["sel_mode"], 0)
    p.connect(p.vars["sel_mode"], 0, p.vars["mode_off_msg"], 0)
    p.connect(p.vars["sel_mode"], 1, p.vars["t_mode_on"], 0)

    for i in range(24):
        p.obj("int", 24 + (i % 12) * 54, 600 + (i // 12) * 34, 2, 1, varname=f"bit_{i}")
    p.trigger(" ".join(["0"] * 24), 24, 690, varname="t_clear")
    p.trigger(" ".join(["b"] * 24), 24, 730, varname="t_read")
    # Clear, then accent the root, then look at the interval count.
    p.connect(p.vars["t_mode_on"], 2, p.vars["t_clear"], 0)
    p.connect(p.vars["t_mode_on"], 1, p.vars["root_int"], 0)
    p.connect(p.vars["t_mode_on"], 0, p.vars["len_int"], 0)
    for i in range(24):
        p.connect(p.vars["t_clear"], i, p.vars[f"bit_{i}"], 0)
        p.connect(p.vars["t_read"], i, p.vars[f"bit_{i}"], 0)
    for i in range(12):
        p.connect(p.vars["route_accent"], i, p.vars[f"bit_{12 + i}"], 0)

    p.obj("pack " + " ".join(["i"] * 24), 24, 780, 24, 1, varname="pack24")
    for i in range(24):
        p.connect(p.vars[f"bit_{i}"], 0, p.vars["pack24"], i)
    p.obj("gate", 24, 820, 2, 1, varname="final_gate")
    p.connect(p.vars["pack24"], 0, p.vars["final_gate"], 1)
    # follow 1 sends the Live scale. follow 0 sends the clicked manual mask.
    p.obj("int", 250, 268, 2, 1, varname="follow_int")
    p.obj("expr 1 - $i1", 360, 268, 1, 1, varname="expr_manual")
    p.obj("sel 1", 480, 268, 2, 2, varname="sel_follow_on")
    p.obj("gate", 24, 860, 2, 1, varname="scale_gate")
    p.obj("gate", 24, 900, 2, 1, varname="manual_gate")
    p.connect(p.vars["in_6"], 0, p.vars["follow_int"], 0)
    p.connect(p.vars["follow_int"], 0, p.vars["scale_gate"], 0)
    p.connect(p.vars["follow_int"], 0, p.vars["expr_manual"], 0)
    p.connect(p.vars["follow_int"], 0, p.vars["sel_follow_on"], 0)
    p.connect(p.vars["sel_follow_on"], 0, p.vars["delay_debounce"], 0)
    p.connect(p.vars["expr_manual"], 0, p.vars["manual_gate"], 0)
    p.connect(p.vars["final_gate"], 0, p.vars["scale_gate"], 1)
    p.connect(p.vars["mode_off_msg"], 0, p.vars["scale_gate"], 1)
    p.connect(p.vars["in_7"], 0, p.vars["manual_gate"], 1)
    p.connect(p.vars["scale_gate"], 0, p.vars["enabled_gate"], 1)
    p.connect(p.vars["manual_gate"], 0, p.vars["enabled_gate"], 1)
    p.connect(p.vars["scale_gate"], 0, p.vars["out_1"], 0)
    p.connect(p.vars["manual_gate"], 0, p.vars["out_1"], 0)

    p.obj("gate", 700, 220, 2, 1, varname="intervals_gate")
    p.obj("append finished", 820, 220, 2, 1, varname="append_end")
    p.obj("iter", 980, 220, 1, 1, varname="iterator")
    p.obj("route finished", 1060, 220, 2, 2, varname="route_end")
    p.obj("int", 1200, 220, 2, 1, varname="interval_int")
    p.obj("expr (($i1 % 12) + 12) % 12", 1200, 270, 1, 1, varname="expr_mod")
    p.obj("int", 1460, 270, 2, 1, varname="pc_int")
    p.trigger("i i", 1460, 310, varname="t_pc")
    p.obj("gate", 1580, 310, 2, 1, varname="pc_gate")
    p.obj("pack 0 1", 1580, 350, 2, 1, varname="pack_main")
    p.obj("route 0 1 2 3 4 5 6 7 8 9 10 11", 1580, 390, 2, 13, varname="route_main")
    p.connect(p.vars["reg_intervals"], 0, p.vars["intervals_gate"], 1)
    p.connect(p.vars["intervals_gate"], 0, p.vars["append_end"], 0)
    p.connect(p.vars["append_end"], 0, p.vars["iterator"], 0)
    p.connect(p.vars["iterator"], 0, p.vars["route_end"], 0)
    p.connect(p.vars["route_end"], 1, p.vars["interval_int"], 0)
    p.connect(p.vars["interval_int"], 0, p.vars["plus_root"], 0)
    p.connect(p.vars["plus_root"], 0, p.vars["expr_mod"], 0)
    p.connect(p.vars["expr_mod"], 0, p.vars["pc_int"], 0)
    p.connect(p.vars["pc_int"], 0, p.vars["t_pc"], 0)
    p.connect(p.vars["t_pc"], 1, p.vars["not_root"], 0)
    p.connect(p.vars["not_root"], 0, p.vars["pc_gate"], 0)
    p.connect(p.vars["t_pc"], 0, p.vars["pc_gate"], 1)
    p.connect(p.vars["pc_gate"], 0, p.vars["pack_main"], 0)
    p.connect(p.vars["pack_main"], 0, p.vars["route_main"], 0)
    for i in range(12):
        p.connect(p.vars["route_main"], i, p.vars[f"bit_{i}"], 0)

    # Right-to-left: close the interval gate, open the final gate, read, close.
    p.trigger("0 b 1 0", 820, 820, varname="t_finish")
    p.connect(p.vars["route_end"], 0, p.vars["t_finish"], 0)
    p.connect(p.vars["t_finish"], 3, p.vars["intervals_gate"], 0)
    p.connect(p.vars["t_finish"], 2, p.vars["final_gate"], 0)
    p.connect(p.vars["t_finish"], 1, p.vars["t_read"], 0)
    p.connect(p.vars["t_finish"], 0, p.vars["final_gate"], 0)

    p.obj("sel 0", 560, 540, 2, 2, varname="sel_len")
    p.trigger("b", 700, 540, varname="t_len_go")
    p.trigger("b 1", 700, 260, varname="t_iter")
    p.connect(p.vars["len_int"], 0, p.vars["sel_len"], 0)
    p.connect(p.vars["sel_len"], 0, p.vars["t_finish"], 0)
    p.connect(p.vars["sel_len"], 1, p.vars["t_len_go"], 0)
    p.connect(p.vars["t_len_go"], 0, p.vars["t_iter"], 0)
    p.connect(p.vars["t_iter"], 1, p.vars["intervals_gate"], 0)
    p.connect(p.vars["t_iter"], 0, p.vars["reg_intervals"], 0)

    _build_sender(p)
    p.comment(
        "Follow on and scale mode on: Accent for the root, Main for every other pitch class in scale_intervals, both off otherwise. "
        "Follow off: the manual mask is Accent for the chosen root when that note is lit, Main for every other lit note. "
        "NRPN 203+index. "
        "Each NRPN is CC 99=1, CC 98=parameter-128, CC 6=0, CC 38=0 or 1, CC 101=127, CC 100=127, then a short gap. "
        "scale_name is not an input to this math.",
        24, 1280, 1100, 52,
    )
    _assert_engine(p)
    return p


def _build_sender(p):
    p.obj("zl.reg", 250, 980, 2, 1, varname="reg_values")
    p.obj("gate", 380, 980, 2, 1, varname="nth_gate")
    p.obj("zl.nth", 480, 980, 2, 2, varname="zl_nth")
    p.trigger("b l 0 b", 80, 940, varname="t_begin")
    p.trigger("0 b 1", 80, 990, varname="t_start")
    p.message("0", 80, 1030, varname="msg_zero")
    p.trigger("b i i i", 250, 1060, varname="t_index")
    p.obj("expr 75 + $i1", 480, 1060, 1, 1, varname="expr_lsb")
    p.obj("expr $i1 + 1", 640, 1060, 1, 1, varname="expr_nth")
    p.obj("int", 800, 1060, 2, 1, varname="idx_int")
    p.trigger("b i", 480, 1120, varname="t_value")
    p.obj("clip 1 16", 360, 130, 3, 1, varname="clip_channel")
    p.obj("expr 175 + $i1", 480, 130, 1, 1, varname="expr_status")
    p.obj("int", 640, 130, 2, 1, varname="status_int")
    p.trigger("b i i i i i i", 640, 1120, varname="status_trig")
    p.obj("sel 23", 980, 1060, 2, 2, varname="sel_last")
    p.obj("+ 1", 1100, 1060, 2, 1, varname="plus_one")
    p.trigger("b i", 1220, 1060, varname="t_next")
    p.obj("int", 1360, 1060, 2, 1, varname="next_int")

    packs = (
        ("pack99", "pack 0 99 1", 250),
        ("pack98", "pack 0 98 0", 400),
        ("pack6", "pack 0 6 0", 550),
        ("pack38", "pack 0 38 0", 700),
        ("pack101", "pack 0 101 127", 850),
        ("pack100", "pack 0 100 127", 1040),
    )
    for name, text, x in packs:
        p.obj(text, x, 1180, 3, 1, varname=name)
        p.connect(p.vars[name], 0, p.vars["out_0"], 0)

    # Outlet 6 fires first.
    for outlet, name in enumerate(("pack100", "pack101", "pack38", "pack6", "pack98", "pack99")):
        p.connect(p.vars["status_trig"], outlet + 1, p.vars[name], 0)
    p.connect(p.vars["status_trig"], 0, p.vars["idx_int"], 0)

    p.connect(p.vars["enabled_gate"], 0, p.vars["t_begin"], 0)
    p.connect(p.vars["t_begin"], 3, p.vars["msg_stop"], 0)
    p.connect(p.vars["t_begin"], 2, p.vars["nth_gate"], 0)
    p.connect(p.vars["t_begin"], 1, p.vars["reg_values"], 0)
    p.connect(p.vars["t_begin"], 0, p.vars["t_start"], 0)
    p.connect(p.vars["t_start"], 2, p.vars["nth_gate"], 0)
    p.connect(p.vars["t_start"], 1, p.vars["channel_int"], 0)
    p.connect(p.vars["t_start"], 0, p.vars["msg_zero"], 0)
    p.connect(p.vars["msg_zero"], 0, p.vars["t_index"], 0)
    p.connect(p.vars["channel_int"], 0, p.vars["clip_channel"], 0)
    p.connect(p.vars["clip_channel"], 0, p.vars["expr_status"], 0)
    p.connect(p.vars["expr_status"], 0, p.vars["status_int"], 1)

    p.connect(p.vars["t_index"], 3, p.vars["expr_lsb"], 0)
    p.connect(p.vars["expr_lsb"], 0, p.vars["pack98"], 2)
    p.connect(p.vars["t_index"], 2, p.vars["expr_nth"], 0)
    p.connect(p.vars["expr_nth"], 0, p.vars["zl_nth"], 1)
    p.connect(p.vars["t_index"], 1, p.vars["idx_int"], 1)
    p.connect(p.vars["t_index"], 0, p.vars["reg_values"], 0)
    p.connect(p.vars["reg_values"], 0, p.vars["nth_gate"], 1)
    p.connect(p.vars["nth_gate"], 0, p.vars["zl_nth"], 0)
    p.connect(p.vars["zl_nth"], 0, p.vars["t_value"], 0)
    p.connect(p.vars["t_value"], 1, p.vars["pack38"], 2)
    p.connect(p.vars["t_value"], 0, p.vars["status_int"], 0)
    p.connect(p.vars["status_int"], 0, p.vars["status_trig"], 0)
    p.connect(p.vars["idx_int"], 0, p.vars["sel_last"], 0)
    p.connect(p.vars["sel_last"], 1, p.vars["plus_one"], 0)
    p.connect(p.vars["plus_one"], 0, p.vars["t_next"], 0)
    p.connect(p.vars["t_next"], 1, p.vars["next_int"], 1)
    p.connect(p.vars["t_next"], 0, p.vars["delay_gap"], 0)
    p.connect(p.vars["delay_gap"], 0, p.vars["next_int"], 0)
    p.connect(p.vars["next_int"], 0, p.vars["t_index"], 0)


def _assert_engine(p):
    p.require("status_trig", 6, "pack99", 0)
    p.require("status_trig", 5, "pack98", 0)
    p.require("status_trig", 4, "pack6", 0)
    p.require("status_trig", 3, "pack38", 0)
    p.require("status_trig", 2, "pack101", 0)
    p.require("status_trig", 1, "pack100", 0)
    p.require("status_trig", 0, "idx_int", 0)
    p.require("expr_lsb", 0, "pack98", 2)
    p.require("t_value", 1, "pack38", 2)
    p.require("t_finish", 2, "final_gate", 0)
    p.require("t_finish", 0, "final_gate", 0)
    p.require("t_finish", 1, "t_read", 0)
    p.require("t_mode_on", 2, "t_clear", 0)
    p.require("t_mode_on", 1, "root_int", 0)
    p.require("t_mode_on", 0, "len_int", 0)
    p.require("mode_off_msg", 0, "scale_gate", 1)
    p.require("final_gate", 0, "scale_gate", 1)
    p.require("in_7", 0, "manual_gate", 1)
    p.require("follow_int", 0, "scale_gate", 0)
    p.require("expr_manual", 0, "manual_gate", 0)
    p.require("scale_gate", 0, "enabled_gate", 1)
    p.require("manual_gate", 0, "enabled_gate", 1)
    p.require("scale_gate", 0, "out_1", 0)
    p.require("manual_gate", 0, "out_1", 0)
    p.require("msg_stop", 0, "delay_gap", 0)
    for name in ("pack99", "pack98", "pack6", "pack38", "pack101", "pack100"):
        p.require(name, 0, "out_0", 0)
    texts = [b["box"].get("text", "") for b in p.boxes]
    blob = "\n".join(texts)
    for banned in ("245", "live.object", "scale_name"):
        # scale_name may appear only in the inlet comment, which is not box text.
        if banned == "scale_name":
            continue
        if banned in blob:
            raise AssertionError(f"engine text contains {banned}")


def build_lights():
    """Paint the 12 cells from one Main-then-Accent list.

    State is accent*2 + main: 0 dark, 1 yellow (Main), 2 cyan (root).
    Each message is its own box: active/inactive fill, active/inactive text, then `set 0` or `set 1`.
    """
    p = Patch()
    p.box(
        "inlet", None, nin=0, nout=1, index=1,
        comment="24 ints, Main C-B then Accent C-B",
        patching_rect=[24.0, 28.0, 220.0, 22.0],
        varname="in_mask",
    )
    p.obj("zl.reg", 24, 70, 2, 1, varname="mask_reg")
    p.obj(f"loadmess {DEFAULT_MANUAL_MASK}", 260, 28, 0, 1, varname="load_mask")
    p.obj("unpack " + " ".join(["i"] * 24), 24, 110, 24, 24, varname="unpack_mask")
    p.connect(p.vars["load_mask"], 0, p.vars["mask_reg"], 1)
    p.connect(p.vars["in_mask"], 0, p.vars["mask_reg"], 1)
    p.connect(p.vars["in_mask"], 0, p.vars["mask_reg"], 0)
    p.connect(p.vars["mask_reg"], 0, p.vars["unpack_mask"], 0)

    for pc in range(12):
        x = 24 + (pc % 6) * 240
        y = 180 + (pc // 6) * 320
        p.obj("expr $i2 * 2 + $i1", x, y, 2, 1, varname=f"state_{pc}")
        p.obj("sel 0 1 2", x, y + 28, 2, 4, varname=f"sel_{pc}")
        p.connect(p.vars["unpack_mask"], pc, p.vars[f"state_{pc}"], 0)
        p.connect(p.vars["unpack_mask"], 12 + pc, p.vars[f"state_{pc}"], 1)
        p.connect(p.vars[f"state_{pc}"], 0, p.vars[f"sel_{pc}"], 0)
        p.box(
            "outlet", None, nin=1, nout=0, outlettype=[], index=pc + 1,
            varname=f"pad_out_{pc}",
            patching_rect=[1540.0, 40.0 + pc * 24.0, 70.0, 22.0],
        )
        for state, (bg_text, bgi_text, fg_text, fgi_text, val_text) in enumerate(PAD_STEPS):
            sy = y + 28 + state * 90
            trig = p.trigger("b b b b b", x + 76, sy, varname=f"t_{state}_{pc}")
            bg = p.message(bg_text, x + 76, sy + 20, varname=f"bg_{state}_{pc}")
            bgi = p.message(bgi_text, x + 76, sy + 40, varname=f"bgi_{state}_{pc}")
            fg = p.message(fg_text, x + 76, sy + 60, varname=f"fg_{state}_{pc}")
            fgi = p.message(fgi_text, x + 150, sy + 40, varname=f"fgi_{state}_{pc}")
            val = p.message(val_text, x + 150, sy + 20, varname=f"val_{state}_{pc}")
            p.connect(p.vars[f"sel_{pc}"], state, trig, 0)
            # Set the colors first, then flip the button between 0 and 1.
            p.connect(trig, 4, bg, 0)
            p.connect(trig, 3, bgi, 0)
            p.connect(trig, 2, fg, 0)
            p.connect(trig, 1, fgi, 0)
            p.connect(trig, 0, val, 0)
            for msg in (bg, bgi, fg, fgi, val):
                p.connect(msg, 0, p.vars[f"pad_out_{pc}"], 0)

    p.obj("live.colors", 24, 860, 1, 2, outlettype=["", "bang"], varname="colors")
    p.obj("loadbang", 24, 820, 0, 1, varname="load_colors")
    color_ids = list(dict.fromkeys(color_id for color_id, *_rest in THEME_COLORS))
    p.trigger(" ".join(["b"] * len(color_ids)), 24, 900, varname="t_query")
    p.trigger("b", 700, 900, varname="t_repaint")
    p.connect(p.vars["load_colors"], 0, p.vars["t_query"], 0)
    p.connect(p.vars["colors"], 1, p.vars["t_query"], 0)
    p.obj(
        "route " + " ".join(color_ids),
        180, 860, 2, len(color_ids) + 1, varname="route_colors",
    )
    p.connect(p.vars["colors"], 0, p.vars["route_colors"], 0)
    for idx, color_id in enumerate(color_ids):
        query = p.message(color_id, 180 + idx * 170, 820, varname=f"query_{idx}")
        p.connect(p.vars["t_query"], len(color_ids) - 1 - idx, query, 0)
        p.connect(query, 0, p.vars["colors"], 0)
    for step_idx, (color_id, setter, attr, prefix) in enumerate(THEME_COLORS):
        outlet = color_ids.index(color_id)
        p.obj(f"prepend set {attr}", 180, 940 + step_idx * 26, 1, 1, varname=setter)
        p.connect(p.vars["route_colors"], outlet, p.vars[setter], 0)
        p.connect(p.vars["route_colors"], outlet, p.vars["t_repaint"], 0)
        for pc in range(12):
            p.connect(p.vars[setter], 0, p.vars[f"{prefix}_{pc}"], 0)
    p.connect(p.vars["t_repaint"], 0, p.vars["mask_reg"], 0)

    p.comment(
        "0 dark, 1 yellow (Control On, the device on/off button), 2 cyan for the root. "
        "On-text is black. live.colors updates the RGBA messages when the theme changes.",
        24, 1180, 640, 36,
    )
    _assert_lights(p)
    return p


def _assert_lights(p):
    p.require("in_mask", 0, "mask_reg", 1)
    p.require("in_mask", 0, "mask_reg", 0)
    p.require("mask_reg", 0, "unpack_mask", 0)
    p.require("t_repaint", 0, "mask_reg", 0)
    for pc in range(12):
        p.require("unpack_mask", pc, f"state_{pc}", 0)
        p.require("unpack_mask", 12 + pc, f"state_{pc}", 1)
        p.require(f"state_{pc}", 0, f"sel_{pc}", 0)
        for state in range(3):
            p.require(f"sel_{pc}", state, f"t_{state}_{pc}", 0)
            p.require(f"t_{state}_{pc}", 4, f"bg_{state}_{pc}", 0)
            p.require(f"t_{state}_{pc}", 3, f"bgi_{state}_{pc}", 0)
            p.require(f"t_{state}_{pc}", 2, f"fg_{state}_{pc}", 0)
            p.require(f"t_{state}_{pc}", 1, f"fgi_{state}_{pc}", 0)
            p.require(f"t_{state}_{pc}", 0, f"val_{state}_{pc}", 0)
            for prefix in ("bg", "bgi", "fg", "fgi", "val"):
                p.require(f"{prefix}_{state}_{pc}", 0, f"pad_out_{pc}", 0)


def build_manual():
    """Lit bits plus a root. Outlet is Main C-B then Accent C-B.

    Inlet 0 stores a mask and does not send. Inlet 1 sets the root and sends.
    Inlet 2 is a click, `pc value`. Inlet 3 bangs the current mask out.
    """
    p = Patch()

    def inlet(index, comment, y):
        return p.box(
            "inlet", None, nin=0, nout=1, index=index + 1, comment=comment,
            patching_rect=[24.0, float(y), 150.0, 22.0],
            varname=f"in_{index}",
        )

    inlet(0, "seed mask, no send", 24)
    inlet(1, "root pitch class", 56)
    inlet(2, "click: pc value", 88)
    inlet(3, "bang sends the mask", 120)
    p.box(
        "outlet", None, nin=1, nout=0, outlettype=[], index=1,
        comment="manual mask",
        patching_rect=[980.0, 24.0, 90.0, 22.0],
        varname="out_mask",
    )
    p.obj("unpack " + " ".join(["i"] * 24), 24, 170, 24, 24, varname="unpack_seed")
    p.obj(f"loadmess {DEFAULT_MANUAL_MASK}", 24, 145, 0, 1, varname="load_seed")
    p.obj("int", 24, 220, 2, 1, varname="root_int")
    p.obj("loadmess 0", 24, 250, 0, 1, varname="load_root")
    p.trigger("b i", 180, 56, varname="t_root")
    p.trigger(" ".join(["b"] * 12), 180, 120, varname="t_flush")
    p.trigger(" ".join(["i"] * 12), 180, 220, varname="t_fan_root")
    p.obj("route " + " ".join(str(i) for i in range(12)), 180, 88, 2, 13, varname="route_click")
    p.connect(p.vars["in_0"], 0, p.vars["unpack_seed"], 0)
    p.connect(p.vars["load_seed"], 0, p.vars["unpack_seed"], 0)
    p.connect(p.vars["load_root"], 0, p.vars["root_int"], 0)
    p.connect(p.vars["in_1"], 0, p.vars["t_root"], 0)
    # trigger fires the right outlet first: store the root, then send.
    p.connect(p.vars["t_root"], 1, p.vars["root_int"], 0)
    p.connect(p.vars["t_root"], 0, p.vars["t_flush"], 0)
    p.connect(p.vars["root_int"], 0, p.vars["t_fan_root"], 0)
    p.connect(p.vars["in_3"], 0, p.vars["t_flush"], 0)
    p.connect(p.vars["in_2"], 0, p.vars["route_click"], 0)

    p.obj("pack " + " ".join(["i"] * 24), 700, 420, 24, 1, varname="pack_mask")
    p.connect(p.vars["pack_mask"], 0, p.vars["out_mask"], 0)
    default_bits = {0, 2, 4, 5, 7, 9, 11}
    for pc in range(12):
        init_bit = 1 if pc in default_bits else 0
        p.obj("expr $i1 || $i2", 24 + pc * 70, 300, 2, 1, varname=f"lit_{pc}")
        p.obj(f"int {init_bit}", 24 + pc * 70, 340, 2, 1, varname=f"bit_{pc}")
        p.obj(f"== {pc}", 24 + pc * 70, 370, 2, 1, varname=f"isroot_{pc}")
        p.obj("expr $i1 * (1 - $i2)", 24 + pc * 70, 400, 2, 1, varname=f"main_{pc}")
        p.obj("expr $i1 * $i2", 24 + pc * 70, 430, 2, 1, varname=f"accent_{pc}")
        p.trigger("b i", 400, 88 + pc * 16, varname=f"t_click_{pc}")
        p.connect(p.vars["unpack_seed"], pc, p.vars[f"lit_{pc}"], 0)
        p.connect(p.vars["unpack_seed"], 12 + pc, p.vars[f"lit_{pc}"], 1)
        p.connect(p.vars[f"lit_{pc}"], 0, p.vars[f"bit_{pc}"], 1)
        p.connect(p.vars["route_click"], pc, p.vars[f"t_click_{pc}"], 0)
        p.connect(p.vars[f"t_click_{pc}"], 1, p.vars[f"bit_{pc}"], 1)
        p.connect(p.vars[f"t_click_{pc}"], 0, p.vars["t_flush"], 0)
        # Outlet 11 fires first: B down to C, so C (inlet 0 of pack) fires last.
        p.connect(p.vars["t_flush"], pc, p.vars[f"bit_{pc}"], 0)
        p.connect(p.vars["t_fan_root"], pc, p.vars[f"isroot_{pc}"], 0)
        p.connect(p.vars[f"isroot_{pc}"], 0, p.vars[f"main_{pc}"], 1)
        p.connect(p.vars[f"isroot_{pc}"], 0, p.vars[f"accent_{pc}"], 1)
        # Accent lands in the pack before Main, so the hot left inlet sees every inlet.
        p.connect(p.vars[f"bit_{pc}"], 0, p.vars[f"accent_{pc}"], 0)
        p.connect(p.vars[f"bit_{pc}"], 0, p.vars[f"main_{pc}"], 0)
        p.connect(p.vars[f"main_{pc}"], 0, p.vars["pack_mask"], pc)
        p.connect(p.vars[f"accent_{pc}"], 0, p.vars["pack_mask"], 12 + pc)

    p.comment(
        "A lit root is Accent and not Main. Every other lit note is Main. "
        "Seed stores bits on the right inlet of int, so it does not send.",
        24, 480, 640, 32,
    )
    _assert_manual(p)
    return p


def _assert_manual(p):
    p.require("in_0", 0, "unpack_seed", 0)
    p.require("t_root", 1, "root_int", 0)
    p.require("t_root", 0, "t_flush", 0)
    p.require("in_3", 0, "t_flush", 0)
    p.require("pack_mask", 0, "out_mask", 0)
    for pc in range(12):
        p.require("unpack_seed", pc, f"lit_{pc}", 0)
        p.require("unpack_seed", 12 + pc, f"lit_{pc}", 1)
        p.require(f"lit_{pc}", 0, f"bit_{pc}", 1)
        p.require(f"t_click_{pc}", 1, f"bit_{pc}", 1)
        p.require(f"t_click_{pc}", 0, "t_flush", 0)
        p.require("t_flush", pc, f"bit_{pc}", 0)
        p.require(f"bit_{pc}", 0, f"accent_{pc}", 0)
        p.require(f"bit_{pc}", 0, f"main_{pc}", 0)
        p.require(f"main_{pc}", 0, "pack_mask", pc)
        p.require(f"accent_{pc}", 0, "pack_mask", 12 + pc)


def _add_note_grid(p, lights):
    """3 columns by 4 rows. Bottom row is C C# D, top row is A A# B."""
    cell_w, cell_h = CELL_SIZE
    gap = CELL_GAP
    origin_x, origin_y = GRID_ORIGIN
    fixed_colors = {
        attr: {"expression": ""}
        for attr in (
            "activebgcolor",
            "activebgoncolor",
            "activetextcolor",
            "activetextoncolor",
            "bgcolor",
            "bgoncolor",
            "textcolor",
            "textoffcolor",
        )
    }
    for row, pcs in enumerate(GRID_ROWS):
        for col, pc in enumerate(pcs):
            name = NOTE_NAMES[pc]
            pad_attrs = dict(fixed_colors)
            pad_attrs["valueof"] = {
                "parameter_longname": f"Note {name}",
                "parameter_shortname": name,
                "parameter_type": 2,
                "parameter_enum": ["Off", "On"],
                "parameter_mmin": 0.0,
                "parameter_mmax": 1.0,
                "parameter_invisible": 2,
                "parameter_modmode": 0,
            }
            p.box(
                "live.text", name, nin=1, nout=2, outlettype=["", ""], varname=f"pad_{pc}",
                texton=name, mode=1, outputmode=1, appearance=0, border=0, rounded=0,
                parameter_enable=1, presentation=1, fontsize=12.0, fontname=UI_FONT,
                activebgcolor=[0.156863, 0.156863, 0.156863, 1.0],
                bgcolor=[0.156863, 0.156863, 0.156863, 1.0],
                activetextcolor=[0.807843, 0.807843, 0.807843, 1.0],
                textoffcolor=[0.807843, 0.807843, 0.807843, 1.0],
                activebgoncolor=[1.0, 0.709804, 0.196078, 1.0],
                bgoncolor=[1.0, 0.709804, 0.196078, 1.0],
                activetextoncolor=[0.0, 0.0, 0.0, 1.0],
                textcolor=[0.0, 0.0, 0.0, 1.0],
                saved_attribute_attributes=pad_attrs,
                patching_rect=[700.0, 220.0 + pc * 26.0, 48.0, 22.0],
                presentation_rect=[
                    origin_x + col * (cell_w + gap),
                    origin_y + row * (cell_h + gap),
                    cell_w,
                    cell_h,
                ],
            )
            p.connect(lights, pc, p.vars[f"pad_{pc}"], 0)


def _add_device_panel(p, lights, engine, manual):
    """Presentation fits in Live's fixed 169-pixel device height."""
    _add_note_grid(p, lights)
    grid_w, grid_h = _grid_size()
    origin_x, origin_y = GRID_ORIGIN
    if origin_y + grid_h > DEVICE_HEIGHT:
        raise AssertionError("grid is taller than a Live device")
    right = origin_x + grid_w + 8

    def label(text, x, y, w, h, varname=None):
        return p.comment(
            text, 900, y, w, h, varname=varname, presentation=1,
            fontname=UI_FONT, fontsize=11.0,
            presentation_rect=[x, y, w, h],
        )

    p.box(
        "live.text", "Scale", nin=1, nout=1, varname="scale_mark",
        texton="Scale", mode=1, outputmode=1, appearance=2, border=0, rounded=0,
        parameter_enable=1, presentation=1, fontname=UI_FONT,
        pictures=["scale.svg", "scale.svg"], usepicture=1, remapsvgcolors=1,
        lcdcolor=SCALE_PURPLE,
        hint="Follow the selected Live scale. Greyed out when Live has no scale selected.",
        patching_rect=[900.0, 28.0, 16.0, 16.0],
        presentation_rect=[right, 6, 16, 16],
        saved_attribute_attributes={
            "valueof": {
                "parameter_longname": "Follow Scale",
                "parameter_shortname": "Scale",
                "parameter_type": 2,
                "parameter_enum": ["Off", "On"],
                "parameter_mmin": 0.0,
                "parameter_mmax": 1.0,
                "parameter_initial": [1],
                "parameter_initial_enable": 1,
                "parameter_modmode": 0,
                "parameter_annotation_name": "Follow Scale",
                "parameter_info": (
                    "Follow the scale of the selected clip. "
                    "Off lets you toggle notes and choose the root."
                ),
            }
        },
    )
    label("Scale Lights", right + 20, 6, 148, 16)
    label("Root", right, 30, 36, 14)
    p.box(
        "live.menu", None, nin=1, nout=3, outlettype=["", "", "float"],
        varname="root_menu", parameter_enable=1, presentation=1,
        fontname=UI_FONT, fontsize=11.0,
        hint="Cyan note. Matches Live while follow is on.",
        patching_rect=[980.0, 70.0, 80.0, 16.0],
        presentation_rect=[right + 40, 28, 80, 16],
        saved_attribute_attributes={
            "valueof": {
                "parameter_longname": "Root",
                "parameter_shortname": "Root",
                "parameter_type": 2,
                "parameter_enum": list(NOTE_NAMES),
                "parameter_mmin": 0.0,
                "parameter_mmax": 11.0,
                "parameter_initial": [0],
                "parameter_initial_enable": 1,
                "parameter_modmode": 0,
                "parameter_annotation_name": "Root",
                "parameter_info": (
                    "Pitch class shown in cyan. Follows Live's root while scale follow is on."
                ),
            }
        },
    )
    label("Ch", right, 52, 28, 14)
    p.box(
        "live.numbox", "1", nin=1, nout=2, outlettype=["", "float"],
        varname="midi_channel", parameter_enable=1, presentation=1,
        fontname=UI_FONT, fontsize=11.0,
        hint="Main channel of the split you are lighting. Left split defaults to 1, right split to 16.",
        patching_rect=[980.0, 100.0, 40.0, 16.0],
        presentation_rect=[right + 40, 50, 40, 16],
        saved_attribute_attributes={
            "valueof": {
                "parameter_longname": "MIDI Channel",
                "parameter_shortname": "Channel",
                "parameter_type": 1,
                "parameter_mmin": 1.0,
                "parameter_mmax": 16.0,
                "parameter_initial": [1],
                "parameter_initial_enable": 1,
                "parameter_unitstyle": 0,
            }
        },
    )
    p.box(
        "live.text", "Resend", nin=1, nout=1, varname="resend",
        mode=0, border=1, rounded=0, parameter_enable=0, presentation=1,
        fontname=UI_FONT, fontsize=11.0,
        hint="Read the current Live scale again and send all 24 light NRPNs.",
        patching_rect=[1040.0, 96.0, 68.0, 18.0],
        presentation_rect=[right, 74, 68, 18],
    )
    p.box(
        "live.text", "Reset", nin=1, nout=1, varname="reset_scale",
        mode=0, border=1, rounded=0, parameter_enable=0, presentation=1,
        fontname=UI_FONT, fontsize=11.0,
        hint="Reset the lit notes to C major. Only available when Follow Scale is off.",
        patching_rect=[1120.0, 96.0, 68.0, 18.0],
        presentation_rect=[right + 74, 74, 68, 18],
    )
    label("MIDI To: LinnStrument", right, 98, 168, 14)
    label("Scale name", right, 118, 168, 16, varname="name_comment")

    for pc in range(12):
        pre = p.obj(f"prepend {pc}", 700, 300 + pc * 18, 1, 1, varname=f"click_{pc}")
        p.connect(p.vars[f"pad_{pc}"], 0, pre, 0)
        p.connect(pre, 0, manual, 2)

    # scale_mode 0 greys the follow button and forces manual editing.
    p.obj("int", 400, 520, 2, 1, varname="scale_mode_int")
    p.obj("int", 400, 560, 2, 1, varname="button_int")
    p.obj("expr $i1 * $i2", 520, 540, 2, 1, varname="expr_follow")
    p.trigger("i i i i", 520, 564, varname="t_follow_fan")
    p.obj("expr 1 - $i1", 640, 540, 1, 1, varname="expr_edit")
    p.obj("change -1", 520, 592, 2, 1, varname="follow_change")
    p.trigger("b i", 400, 600, varname="t_button")
    p.trigger("i i", 520, 620, varname="t_follow")
    p.obj("sel 0 1", 400, 660, 2, 3, varname="sel_scale")
    p.obj("sel 0 1", 520, 660, 2, 3, varname="sel_follow")
    p.obj("loadmess 1", 400, 640, 0, 1, varname="load_follow")
    p.message("active 0", 400, 700, varname="grey_scale")
    p.message("active 1", 400, 730, varname="arm_scale")
    p.message("ignoreclick 0", 640, 700, varname="show_clicks")
    p.message("ignoreclick 1", 640, 730, varname="block_clicks")
    p.obj("expr (($i1 % 12) + 12) % 12", 800, 520, 1, 1, varname="expr_live_root")
    p.obj("int", 800, 560, 2, 1, varname="live_root_int")
    p.obj("gate", 900, 520, 2, 1, varname="assign_gate")
    p.obj("gate", 900, 560, 2, 1, varname="live_root_gate")
    p.obj("gate", 900, 600, 2, 1, varname="menu_gate")
    p.obj("gate", 900, 640, 2, 1, varname="once_gate")
    p.obj("prepend assign", 1040, 520, 1, 1, varname="prepend_assign")
    p.trigger("b b b", 800, 660, varname="t_enter_manual")
    p.message("1", 760, 700, varname="open_once")
    p.message("0", 760, 730, varname="close_once")

    p.connect(p.vars["def_0"], 0, p.vars["scale_mode_int"], 0)
    p.connect(p.vars["scale_mode_int"], 0, p.vars["expr_follow"], 0)
    p.connect(p.vars["scale_mode_int"], 0, p.vars["sel_scale"], 0)
    p.connect(p.vars["sel_scale"], 0, p.vars["grey_scale"], 0)
    p.connect(p.vars["sel_scale"], 1, p.vars["arm_scale"], 0)
    p.connect(p.vars["grey_scale"], 0, p.vars["scale_mark"], 0)
    p.connect(p.vars["arm_scale"], 0, p.vars["scale_mark"], 0)
    p.connect(p.vars["load_follow"], 0, p.vars["t_button"], 0)
    p.connect(p.vars["scale_mark"], 0, p.vars["t_button"], 0)
    p.connect(p.vars["t_button"], 1, p.vars["button_int"], 0)
    p.connect(p.vars["button_int"], 0, p.vars["expr_follow"], 1)
    p.connect(p.vars["t_button"], 0, p.vars["scale_mode_int"], 0)
    # Arm the root gates before firing follow_change side effects.
    p.connect(p.vars["expr_follow"], 0, p.vars["t_follow_fan"], 0)
    p.connect(p.vars["t_follow_fan"], 3, p.vars["expr_edit"], 0)
    p.connect(p.vars["t_follow_fan"], 2, p.vars["assign_gate"], 0)
    p.connect(p.vars["t_follow_fan"], 1, p.vars["live_root_gate"], 0)
    p.connect(p.vars["expr_edit"], 0, p.vars["menu_gate"], 0)
    p.connect(p.vars["t_follow_fan"], 0, p.vars["follow_change"], 0)
    p.connect(p.vars["follow_change"], 0, p.vars["t_follow"], 0)
    # Set the engine's follow flag before the enter/leave side effects.
    p.connect(p.vars["t_follow"], 1, engine, 6)
    p.connect(p.vars["t_follow"], 0, p.vars["sel_follow"], 0)
    p.connect(p.vars["sel_follow"], 1, p.vars["block_clicks"], 0)
    p.connect(p.vars["sel_follow"], 1, p.vars["t_reread"], 0)
    p.connect(p.vars["sel_follow"], 1, p.vars["live_root_int"], 0)
    p.connect(p.vars["sel_follow"], 0, p.vars["show_clicks"], 0)
    p.connect(p.vars["sel_follow"], 0, p.vars["t_enter_manual"], 0)
    for pc in range(12):
        p.connect(p.vars["block_clicks"], 0, p.vars[f"pad_{pc}"], 0)
        p.connect(p.vars["show_clicks"], 0, p.vars[f"pad_{pc}"], 0)
    # Right outlet first: open the one-shot gate, push the root into the menu, close it.
    p.connect(p.vars["t_enter_manual"], 2, p.vars["open_once"], 0)
    p.connect(p.vars["open_once"], 0, p.vars["once_gate"], 0)
    p.connect(p.vars["t_enter_manual"], 1, p.vars["live_root_int"], 0)
    p.connect(p.vars["t_enter_manual"], 0, p.vars["close_once"], 0)
    p.connect(p.vars["close_once"], 0, p.vars["once_gate"], 0)
    p.connect(p.vars["def_1"], 0, p.vars["expr_live_root"], 0)
    p.connect(p.vars["expr_live_root"], 0, p.vars["live_root_int"], 0)
    p.connect(p.vars["live_root_int"], 0, p.vars["assign_gate"], 1)
    p.connect(p.vars["live_root_int"], 0, p.vars["live_root_gate"], 1)
    p.connect(p.vars["live_root_int"], 0, p.vars["once_gate"], 1)
    p.connect(p.vars["assign_gate"], 0, p.vars["prepend_assign"], 0)
    p.connect(p.vars["prepend_assign"], 0, p.vars["root_menu"], 0)
    p.connect(p.vars["once_gate"], 0, p.vars["root_menu"], 0)
    p.connect(p.vars["root_menu"], 0, p.vars["menu_gate"], 1)
    p.connect(p.vars["menu_gate"], 0, manual, 1)
    p.connect(p.vars["live_root_gate"], 0, manual, 1)

    p.trigger("b b b", 1120, 640, varname="t_reset")
    p.message(DEFAULT_MANUAL_MASK, 1240, 680, varname="reset_mask")
    p.message("set 0", 1180, 700, varname="reset_menu")
    p.message("0", 1120, 720, varname="reset_root")
    p.message("active 0", 1120, 760, varname="grey_reset")
    p.message("active 1", 1200, 760, varname="arm_reset")
    p.connect(p.vars["reset_scale"], 0, p.vars["t_reset"], 0)
    # Seed the bits silently, then the root inlet flushes the whole mask once.
    p.connect(p.vars["t_reset"], 2, p.vars["reset_mask"], 0)
    p.connect(p.vars["reset_mask"], 0, manual, 0)
    p.connect(p.vars["t_reset"], 1, p.vars["reset_menu"], 0)
    p.connect(p.vars["reset_menu"], 0, p.vars["root_menu"], 0)
    p.connect(p.vars["t_reset"], 0, p.vars["reset_root"], 0)
    p.connect(p.vars["reset_root"], 0, manual, 1)
    p.connect(p.vars["block_clicks"], 0, p.vars["reset_scale"], 0)
    p.connect(p.vars["show_clicks"], 0, p.vars["reset_scale"], 0)
    p.connect(p.vars["sel_follow"], 1, p.vars["grey_reset"], 0)
    p.connect(p.vars["sel_follow"], 0, p.vars["arm_reset"], 0)
    p.connect(p.vars["grey_reset"], 0, p.vars["reset_scale"], 0)
    p.connect(p.vars["arm_reset"], 0, p.vars["reset_scale"], 0)

    p.require("expr_follow", 0, "t_follow_fan", 0)
    p.require("t_follow_fan", 0, "follow_change", 0)
    p.require("t_follow", 1, "engine", 6)
    p.require("sel_scale", 0, "grey_scale", 0)
    p.require("grey_scale", 0, "scale_mark", 0)
    p.require("menu_gate", 0, "manual", 1)
    p.require("live_root_gate", 0, "manual", 1)
    p.require("reset_mask", 0, "manual", 0)
    p.require("reset_root", 0, "manual", 1)
    p.require("block_clicks", 0, "reset_scale", 0)
    bottom = max(
        box["presentation_rect"][1] + box["presentation_rect"][3]
        for wrapped in p.boxes
        for box in [wrapped["box"]]
        if box.get("presentation")
    )
    if bottom > DEVICE_HEIGHT:
        raise AssertionError(f"presentation ends at {bottom}, Live devices are {DEVICE_HEIGHT}")


def build_parent(engine_patcher):
    p = Patch()
    p.obj("live.thisdevice", 40, 40, 1, 3, varname="thisdevice")
    p.obj("deferlow", 40, 90, 1, 1, varname="defer_init")
    p.trigger("b b b", 40, 130, varname="t_init")
    p.obj("live.path live_set", 40, 190, 1, 3, varname="path_set")
    p.obj("live.path live_set view", 220, 190, 1, 3, varname="path_view")
    p.trigger("l l l l", 40, 240, varname="t_ids")

    observers = (
        ("obs_mode", "live.observer scale_mode", 40),
        ("obs_root", "live.observer root_note", 230),
        ("obs_name", "live.observer scale_name", 420),
        ("obs_intervals", "live.observer scale_intervals", 640),
    )
    for i, (name, text, x) in enumerate(observers):
        p.obj(text, x, 300, 2, 2, varname=name)
        p.obj("deferlow", x, 340, 1, 1, varname=f"def_{i}")
        p.connect(p.vars["t_ids"], i, p.vars[name], 1)
        p.connect(p.vars[name], 0, p.vars[f"def_{i}"], 0)

    p.obj("live.observer detail_clip", 900, 300, 2, 2, varname="obs_clip")
    p.obj("deferlow", 900, 340, 1, 1, varname="def_clip")
    p.trigger("b b b b", 40, 400, varname="t_reread")
    p.connect(p.vars["path_view"], 0, p.vars["obs_clip"], 1)
    p.connect(p.vars["obs_clip"], 0, p.vars["def_clip"], 0)
    p.connect(p.vars["def_clip"], 0, p.vars["t_reread"], 0)
    for i, (name, _text, _x) in enumerate(observers):
        p.connect(p.vars["t_reread"], i, p.vars[name], 0)

    p.connect(p.vars["thisdevice"], 0, p.vars["defer_init"], 0)
    p.connect(p.vars["defer_init"], 0, p.vars["t_init"], 0)
    # path_set first (rightmost), then the view, then the channel numbox.
    p.connect(p.vars["t_init"], 2, p.vars["path_set"], 0)
    p.connect(p.vars["t_init"], 1, p.vars["path_view"], 0)
    p.connect(p.vars["path_set"], 0, p.vars["t_ids"], 0)

    engine = p.box(
        "newobj", "p engine", nin=8, nout=2, varname="engine",
        patching_rect=[40.0, 460.0, 72.0, 22.0],
        patcher=engine_patcher,
    )
    for i in range(4):
        p.connect(p.vars[f"def_{i}"], 0, engine, i)
    p.connect(p.vars["thisdevice"], 1, engine, 5)
    p.obj("loadmess 1", 200, 40, 0, 1, varname="load_enabled")
    p.connect(p.vars["load_enabled"], 0, engine, 5)

    p.obj("midiout", 280, 460, 1, 0, outlettype=[], varname="midi_out")
    p.obj("midiin", 280, 520, 1, 1, varname="midi_in")
    p.connect(engine, 0, p.vars["midi_out"], 0)

    lights = p.box(
        "newobj", "p lights", nin=1, nout=12, varname="lights",
        patching_rect=[160.0, 460.0, 64.0, 22.0],
        patcher=build_lights().as_dict([40.0, 40.0, 1700.0, 700.0], presentation=False),
    )
    manual = p.box(
        "newobj", "p manual", nin=4, nout=1, varname="manual",
        patching_rect=[250.0, 460.0, 70.0, 22.0],
        patcher=build_manual().as_dict([40.0, 40.0, 1200.0, 560.0], presentation=False),
    )
    p.connect(engine, 1, lights, 0)
    p.connect(engine, 1, manual, 0)
    p.connect(manual, 0, engine, 7)

    p.obj("prepend set", 420, 380, 2, 1, varname="prepend_name")
    p.connect(p.vars["def_2"], 0, p.vars["prepend_name"], 0)
    _add_device_panel(p, lights, engine, manual)

    p.connect(p.vars["midi_channel"], 0, engine, 4)
    p.connect(p.vars["t_init"], 0, p.vars["midi_channel"], 0)
    p.connect(p.vars["resend"], 0, p.vars["t_reread"], 0)
    p.connect(p.vars["resend"], 0, manual, 3)
    p.connect(p.vars["prepend_name"], 0, p.vars["name_comment"], 0)

    p.comment(
        "MIDI effect for its own track. midiin is not connected, so performance notes are not echoed and none are required. "
        "midiout is what Live sends to this track's MIDI To. Observe live_set scale_mode, root_note, scale_name, scale_intervals, "
        "and live_set view detail_clip. detail_clip bangs the four Song observers so a clip change is re-read even when the values match. "
        "Does not set Song scale properties, does not enable User Firmware mode, and does not write or clear custom light memories. "
        "Pitch-class presets only: custom memories A, A#, and B ignore Main and Accent NRPNs 203 through 226.",
        40, 580, 860, 72,
    )
    p.require("path_set", 0, "t_ids", 0)
    p.require("path_view", 0, "obs_clip", 1)
    p.require("t_ids", 0, "obs_mode", 1)
    p.require("t_ids", 1, "obs_root", 1)
    p.require("t_ids", 2, "obs_name", 1)
    p.require("t_ids", 3, "obs_intervals", 1)
    p.require("def_clip", 0, "t_reread", 0)
    p.require("resend", 0, "t_reread", 0)
    p.require("t_reread", 0, "obs_mode", 0)
    p.require("t_reread", 1, "obs_root", 0)
    p.require("t_reread", 2, "obs_name", 0)
    p.require("t_reread", 3, "obs_intervals", 0)
    p.require("engine", 0, "midi_out", 0)
    p.require("engine", 1, "lights", 0)
    for pc in range(12):
        p.require("lights", pc, f"pad_{pc}", 0)
        p.require(f"click_{pc}", 0, "manual", 2)
    p.require("manual", 0, "engine", 7)
    p.require("engine", 1, "manual", 0)
    p.require("def_0", 0, "engine", 0)
    p.require("def_1", 0, "engine", 1)
    p.require("def_2", 0, "engine", 2)
    p.require("def_3", 0, "engine", 3)
    outgoing = {line["patchline"]["source"][0] for line in p.lines}
    if p.vars["midi_in"] in outgoing:
        raise AssertionError("midiin is connected")
    texts = [b["box"].get("text", "") for b in p.boxes]
    for banned in ("live.object", "245", "plugin~", "plugout~"):
        if any(banned in t for t in texts):
            raise AssertionError(banned)
    return p


def dumps(doc):
    return (json.dumps(doc, indent=2, ensure_ascii=False) + "\n").encode("utf-8")


def amxd_bytes(json_bytes):
    header = (
        b"ampf"
        + struct.pack("<I", 4)
        + b"mmmmmeta"
        + struct.pack("<I", 4)
        + struct.pack("<I", 1)
        + b"ptch"
        + struct.pack("<I", len(json_bytes))
    )
    if len(header) != 32:
        raise RuntimeError(f"header {len(header)}")
    return header + json_bytes


def build_document():
    engine = build_engine()
    parent = build_parent(engine.as_dict([40.0, 40.0, 1200.0, 800.0], presentation=False))
    doc = {"patcher": parent.as_dict([80.0, 80.0, 1100.0, 760.0], presentation=True)}
    doc["patcher"]["description"] = (
        "Lights a LinnStrument from the scale of the clip selected in Live 12."
    )
    doc["patcher"]["digest"] = "LinnStrument scale lights"
    return doc


def main():
    doc = build_document()
    raw = dumps(doc)
    json.loads(raw)
    MAXPAT_PATH.write_bytes(raw)
    AMXD_PATH.write_bytes(amxd_bytes(raw))
    print(f"wrote {MAXPAT_PATH} ({len(raw)} bytes)")
    print(f"wrote {AMXD_PATH} ({32 + len(raw)} bytes)")


if __name__ == "__main__":
    main()
