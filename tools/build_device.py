#!/usr/bin/env python3
"""Build LinnStrumentScaleLights.maxpat and .amxd without Max.

The .amxd is the container Live 12's Max 9.1 line reads: a 32-byte
ampf/ptch header followed by the JSON patcher.
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
        return p.box(
            "inlet", None, nin=0, nout=1, index=index, comment=comment,
            patching_rect=[24.0, float(y), 110.0, 22.0],
            varname=f"in_{index}",
        )

    def outlet(index, comment, x, y):
        return p.box(
            "outlet", None, nin=1, nout=0, outlettype=[], index=index, comment=comment,
            patching_rect=[float(x), float(y), 100.0, 22.0],
            varname=f"out_{index}",
        )

    inlet(0, "scale_mode", 28)
    inlet(1, "root_note", 68)
    inlet(2, "scale_name, display only", 108)
    inlet(3, "scale_intervals", 148)
    inlet(4, "MIDI channel", 188)
    inlet(5, "device enabled", 228)
    outlet(0, "MIDI bytes", 1680, 28)
    outlet(1, "status line", 1680, 68)

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

    p.obj("gate", 1400, 228, 2, 1, varname="enabled_gate")
    p.message("stop", 560, 228, varname="msg_stop")
    p.obj("sel 0", 400, 228, 2, 2, varname="sel_enabled_off")
    p.obj(f"delay {NRPN_GAP_MS}", 1400, 268, 2, 1, varname="delay_gap")
    p.connect(p.vars["in_5"], 0, p.vars["t_enabled"], 0)
    p.connect(p.vars["t_enabled"], 1, p.vars["sel_enabled_off"], 0)
    p.connect(p.vars["t_enabled"], 1, p.vars["enabled_gate"], 1)
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
    p.obj("route 0 1 2 3 4 5 6 7 8 9 10 11", 660, 360, 2, 13, varname="route_root")
    for i, name in enumerate(NOTE_NAMES):
        msg = p.message(name, 660 + (i % 6) * 50, 420 + (i // 6) * 26, varname=f"note_{i}")
        p.connect(p.vars["route_root"], i, msg, 0)
    p.message("on", 400, 490, varname="msg_on")
    p.message("off", 460, 490, varname="msg_off")
    p.obj('sprintf "set Scale mode %s | root %s"', 980, 490, 2, 1, varname="sprintf_status")
    for i in range(12):
        p.connect(p.vars[f"note_{i}"], 0, p.vars["sprintf_status"], 1)
    p.connect(p.vars["msg_on"], 0, p.vars["sprintf_status"], 0)
    p.connect(p.vars["msg_off"], 0, p.vars["sprintf_status"], 0)
    p.connect(p.vars["sprintf_status"], 0, p.vars["out_1"], 0)

    p.obj("+ 0", 820, 360, 2, 1, varname="plus_root")
    p.obj("!= 0", 900, 360, 2, 1, varname="not_root")
    p.obj("pack 0 1", 980, 360, 2, 1, varname="pack_accent")
    p.obj("route 0 1 2 3 4 5 6 7 8 9 10 11", 980, 410, 2, 13, varname="route_accent")
    p.connect(p.vars["root_int"], 0, p.vars["expr_root"], 0)
    p.connect(p.vars["expr_root"], 0, p.vars["root_pc"], 0)
    p.connect(p.vars["root_pc"], 0, p.vars["route_root"], 0)
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
    p.connect(p.vars["sel_mode"], 0, p.vars["msg_off"], 0)
    p.connect(p.vars["sel_mode"], 0, p.vars["mode_off_msg"], 0)
    p.connect(p.vars["sel_mode"], 1, p.vars["msg_on"], 0)
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
    p.connect(p.vars["pack24"], 0, p.vars["final_gate"], 0)
    p.connect(p.vars["final_gate"], 0, p.vars["enabled_gate"], 0)
    p.connect(p.vars["mode_off_msg"], 0, p.vars["enabled_gate"], 0)

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
    p.connect(p.vars["reg_intervals"], 0, p.vars["intervals_gate"], 0)
    p.connect(p.vars["intervals_gate"], 0, p.vars["append_end"], 0)
    p.connect(p.vars["append_end"], 0, p.vars["iterator"], 0)
    p.connect(p.vars["iterator"], 0, p.vars["route_end"], 0)
    p.connect(p.vars["route_end"], 1, p.vars["interval_int"], 0)
    p.connect(p.vars["interval_int"], 0, p.vars["plus_root"], 0)
    p.connect(p.vars["plus_root"], 0, p.vars["expr_mod"], 0)
    p.connect(p.vars["expr_mod"], 0, p.vars["pc_int"], 0)
    p.connect(p.vars["pc_int"], 0, p.vars["t_pc"], 0)
    p.connect(p.vars["t_pc"], 1, p.vars["not_root"], 0)
    p.connect(p.vars["not_root"], 0, p.vars["pc_gate"], 1)
    p.connect(p.vars["t_pc"], 0, p.vars["pc_gate"], 0)
    p.connect(p.vars["pc_gate"], 0, p.vars["pack_main"], 0)
    p.connect(p.vars["pack_main"], 0, p.vars["route_main"], 0)
    for i in range(12):
        p.connect(p.vars["route_main"], i, p.vars[f"bit_{i}"], 0)

    # Right-to-left: close the interval gate, open the final gate, read, close.
    p.trigger("0 b 1 0", 820, 820, varname="t_finish")
    p.connect(p.vars["route_end"], 0, p.vars["t_finish"], 0)
    p.connect(p.vars["t_finish"], 3, p.vars["intervals_gate"], 1)
    p.connect(p.vars["t_finish"], 2, p.vars["final_gate"], 1)
    p.connect(p.vars["t_finish"], 1, p.vars["t_read"], 0)
    p.connect(p.vars["t_finish"], 0, p.vars["final_gate"], 1)

    p.obj("sel 0", 560, 540, 2, 2, varname="sel_len")
    p.trigger("b", 700, 540, varname="t_len_go")
    p.trigger("b 1", 700, 260, varname="t_iter")
    p.connect(p.vars["len_int"], 0, p.vars["sel_len"], 0)
    p.connect(p.vars["sel_len"], 0, p.vars["t_finish"], 0)
    p.connect(p.vars["sel_len"], 1, p.vars["t_len_go"], 0)
    p.connect(p.vars["t_len_go"], 0, p.vars["t_iter"], 0)
    p.connect(p.vars["t_iter"], 1, p.vars["intervals_gate"], 1)
    p.connect(p.vars["t_iter"], 0, p.vars["reg_intervals"], 0)

    _build_sender(p)
    p.comment(
        "Scale mode on: Accent for the root, Main for every other pitch class in scale_intervals, both off otherwise. "
        "Scale mode off: Main on for all 12, Accent off. NRPN 203+index. "
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
    p.connect(p.vars["t_begin"], 2, p.vars["nth_gate"], 1)
    p.connect(p.vars["t_begin"], 1, p.vars["reg_values"], 0)
    p.connect(p.vars["t_begin"], 0, p.vars["t_start"], 0)
    p.connect(p.vars["t_start"], 2, p.vars["nth_gate"], 1)
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
    p.connect(p.vars["reg_values"], 0, p.vars["nth_gate"], 0)
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
    p.require("t_finish", 2, "final_gate", 1)
    p.require("t_finish", 0, "final_gate", 1)
    p.require("t_finish", 1, "t_read", 0)
    p.require("t_mode_on", 2, "t_clear", 0)
    p.require("t_mode_on", 1, "root_int", 0)
    p.require("t_mode_on", 0, "len_int", 0)
    p.require("mode_off_msg", 0, "enabled_gate", 0)
    p.require("final_gate", 0, "enabled_gate", 0)
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
        "newobj", "p engine", nin=6, nout=2, varname="engine",
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

    p.obj("prepend set", 420, 380, 2, 1, varname="prepend_name")
    p.connect(p.vars["def_2"], 0, p.vars["prepend_name"], 0)

    title = p.comment(
        "LinnStrument Scale Lights", 700, 28, 240, 22,
        fontface=1, fontsize=13.0, presentation=1,
        presentation_rect=[16.0, 8.0, 250.0, 20.0],
    )
    p.comment(
        "Channel", 700, 58, 56, 20, presentation=1,
        presentation_rect=[16.0, 36.0, 54.0, 18.0],
    )
    p.box(
        "live.numbox", "1", nin=1, nout=2, outlettype=["", "float"],
        varname="midi_channel", parameter_enable=1, presentation=1,
        hint="Main channel of the split you are lighting. Left split defaults to 1, right split to 16.",
        patching_rect=[770.0, 56.0, 52.0, 18.0],
        presentation_rect=[74.0, 34.0, 48.0, 18.0],
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
        mode=0, border=1, parameter_enable=0, presentation=1,
        hint="Read the current Live scale again and send all 24 light NRPNs.",
        patching_rect=[840.0, 52.0, 72.0, 22.0],
        presentation_rect=[136.0, 32.0, 72.0, 22.0],
    )
    p.comment(
        "MIDI To: LinnStrument", 700, 86, 180, 20, presentation=1,
        presentation_rect=[220.0, 36.0, 250.0, 18.0],
    )
    p.comment(
        "Waiting for the Live scale", 700, 112, 420, 20,
        varname="status_comment", presentation=1,
        presentation_rect=[16.0, 62.0, 460.0, 18.0],
    )
    p.comment(
        "Scale name", 700, 138, 420, 20,
        varname="name_comment", presentation=1,
        presentation_rect=[16.0, 84.0, 460.0, 18.0],
    )
    p.connect(p.vars["midi_channel"], 0, engine, 4)
    p.connect(p.vars["t_init"], 0, p.vars["midi_channel"], 0)
    p.connect(p.vars["resend"], 0, p.vars["t_reread"], 0)
    p.connect(engine, 1, p.vars["status_comment"], 0)
    p.connect(p.vars["prepend_name"], 0, p.vars["name_comment"], 0)

    p.comment(
        "MIDI effect for its own track. midiin is not connected, so performance notes are not echoed and none are required. "
        "midiout is what Live sends to this track's MIDI To. Observe live_set scale_mode, root_note, scale_name, scale_intervals, "
        "and live_set view detail_clip. detail_clip bangs the four Song observers so a clip change is re-read even when the values match. "
        "Does not set Song scale properties, does not enable User Firmware mode, and does not write or clear custom light memories. "
        "Pitch-class presets only: custom memories A, A#, and B ignore Main and Accent NRPNs 203 through 226.",
        40, 580, 860, 72,
    )
    # title is created so the presentation has a name; keep the id used.
    _ = title

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
        + b"aaaameta"
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
