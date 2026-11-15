#!/usr/bin/env python3
"""Checks the scale math and the generated Max patcher. Does not open Max."""

import json
import struct
import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from build_device import (
    ACCENT_ON,
    ACCENT_ON_INACTIVE,
    ACCENT_TEXT,
    ACCENT_TEXT_INACTIVE,
    COLOR_SETTINGS,
    DARK_BG,
    DARK_BG_INACTIVE,
    DEFAULT_MAIN,
    DEVICE_HEIGHT,
    DIM_TEXT,
    DIM_TEXT_INACTIVE,
    LINN_COLORS,
    MAIN_ON,
    MAIN_ON_INACTIVE,
    MAIN_TEXT,
    MAIN_TEXT_INACTIVE,
    NOTE_NAMES,
    RAINBOW_ORDER,
    amxd_bytes,
    build_document,
    dumps,
    text_for,
)
from scale_logic import full_update, masks, nrpn_messages, parameter_number


def links(patcher):
    return [
        (line["patchline"]["source"], line["patchline"]["destination"])
        for line in patcher["lines"]
    ]


def boxes(patcher):
    return [item["box"] for item in patcher["boxes"]]


def by_var(patcher):
    return {box["varname"]: box for box in boxes(patcher) if box.get("varname")}


class ScaleLogicTest(unittest.TestCase):
    def test_spec_example_for_main_c(self):
        self.assertEqual(
            nrpn_messages(0, 1, 1),
            (
                (176, 99, 1),
                (176, 98, 75),
                (176, 6, 0),
                (176, 38, 1),
                (176, 101, 127),
                (176, 100, 127),
            ),
        )

    def test_parameter_numbers_match_lsb(self):
        for index in range(24):
            param = parameter_number(index)
            _status, cc, lsb = nrpn_messages(index, 0, 1)[1]
            self.assertEqual(cc, 98)
            self.assertEqual(lsb, param - 128)
            self.assertEqual(param, 203 + index)

    def test_channel_16_status(self):
        self.assertEqual(nrpn_messages(0, 0, 16)[0][0], 191)

    def test_c_major(self):
        values, _messages = full_update(1, 0, [0, 2, 4, 5, 7, 9, 11], 1)
        self.assertEqual(values[:12], [0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1])
        self.assertEqual(values[12:], [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])

    def test_d_major_root_is_accent_not_main(self):
        values, _messages = full_update(1, 2, [0, 2, 4, 5, 7, 9, 11], 1)
        # D E F# G A B C#
        self.assertEqual(values[2], 0)
        self.assertEqual(values[14], 1)
        for pc in (4, 6, 7, 9, 11, 1):
            self.assertEqual(values[pc], 1)
            self.assertEqual(values[12 + pc], 0)
        for pc in (0, 3, 5, 8, 10):
            self.assertEqual(values[pc], 0)
            self.assertEqual(values[12 + pc], 0)

    def test_scale_mode_off_ignores_intervals(self):
        self.assertEqual(masks(0, 7, [0, 2, 4]), [1] * 12 + [0] * 12)

    def test_wrap_and_negative_interval(self):
        values, _messages = full_update(1, 0, [-1], 1)
        self.assertEqual(values[11], 1)
        self.assertEqual(values[0], 0)
        self.assertEqual(values[12], 1)

    def test_root_only_when_zero_missing(self):
        values, _messages = full_update(1, 5, [2, 4], 1)
        self.assertEqual(values[5], 0)
        self.assertEqual(values[17], 1)
        self.assertEqual(values[7], 1)
        self.assertEqual(values[9], 1)

    def test_full_update_is_24_nrpns_with_reset(self):
        _values, messages = full_update(1, 0, [0, 2, 4, 5, 7, 9, 11], 1)
        self.assertEqual(len(messages), 24 * 6)
        for index in range(24):
            group = messages[index * 6:(index + 1) * 6]
            self.assertEqual([cc for _st, cc, _v in group], [99, 98, 6, 38, 101, 100])
            self.assertEqual(group[4][2], 127)
            self.assertEqual(group[5][2], 127)


class PatcherTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.doc = build_document()
        cls.patcher = cls.doc["patcher"]
        cls.engine = by_var(cls.patcher)["engine"]["patcher"]

    def test_json_roundtrip_and_amxd_header(self):
        raw = dumps(self.doc)
        self.assertEqual(json.loads(raw), self.doc)
        blob = amxd_bytes(raw)
        self.assertEqual(len(blob[:32]), 32)
        self.assertTrue(blob.startswith(b"ampf"))
        self.assertEqual(blob[8:12], b"mmmm")
        self.assertEqual(blob[8:16], b"mmmmmeta")
        self.assertEqual(blob[24:28], b"ptch")
        ptch = blob.index(b"ptch")
        length = struct.unpack_from("<I", blob, ptch + 4)[0]
        payload = blob[ptch + 8:ptch + 8 + length]
        self.assertEqual(payload, raw)
        self.assertEqual(json.loads(payload), self.doc)

    def test_every_cord_lands_on_a_real_inlet(self):
        parent = by_var(self.patcher)
        for name in ("engine", "lights", "manual", "reply"):
            sub = parent[name]["patcher"]
            inlets = [b["index"] for b in boxes(sub) if b["maxclass"] == "inlet"]
            outlets = [b["index"] for b in boxes(sub) if b["maxclass"] == "outlet"]
            self.assertEqual(sorted(inlets), list(range(1, parent[name]["numinlets"] + 1)))
            self.assertEqual(sorted(outlets), list(range(1, parent[name]["numoutlets"] + 1)))
        for patcher in (
            self.patcher,
            self.engine,
            parent["lights"]["patcher"],
            parent["manual"]["patcher"],
            parent["reply"]["patcher"],
        ):
            io = {box["id"]: box for box in boxes(patcher)}
            for src, dst in links(patcher):
                self.assertIn(src[0], io)
                self.assertIn(dst[0], io)
                self.assertLess(src[1], io[src[0]]["numoutlets"])
                self.assertLess(dst[1], io[dst[0]]["numinlets"])

    def test_device_is_a_midi_effect_that_does_not_echo(self):
        names = [box.get("text", "") for box in boxes(self.patcher)]
        self.assertIn("midiin", names)
        self.assertIn("midiout", names)
        self.assertFalse(any("plugin~" in text or "plugout~" in text for text in names))
        parent = by_var(self.patcher)
        midiin = parent["midi_in"]["id"]
        self.assertEqual(
            [dst[0] for src, dst in links(self.patcher) if src[0] == midiin],
            [parent["reply"]["id"]],
        )
        midiout_sources = {src[0] for src, dst in links(self.patcher) if dst[0] == parent["midi_out"]["id"]}
        self.assertEqual(midiout_sources, {parent["engine"]["id"]})

    def test_observers_use_the_spec_paths(self):
        texts = [box.get("text", "") for box in boxes(self.patcher)]
        for required in (
            "live.path live_set",
            "live.path live_set view",
            "live.observer scale_mode",
            "live.observer root_note",
            "live.observer scale_name",
            "live.observer scale_intervals",
            "live.observer detail_clip",
        ):
            self.assertIn(required, texts)
        self.assertNotIn("live.object", texts)

    def test_detail_clip_rereads_the_four_properties(self):
        parent = by_var(self.patcher)
        reread_outs = {
            dst[0]
            for src, dst in links(self.patcher)
            if src[0] == parent["t_reread"]["id"] and dst[1] == 0
        }
        for name in ("obs_mode", "obs_root", "obs_name", "obs_intervals"):
            self.assertIn(parent[name]["id"], reread_outs)
        self.assertNotIn(parent["obs_clip"]["id"], reread_outs)

    def test_nrpn_encoding_objects(self):
        eng = by_var(self.engine)
        self.assertEqual(eng["expr_lsb"]["text"], "expr 75 + $i1")
        self.assertEqual(eng["expr_status"]["text"], "expr 175 + $i1")
        self.assertEqual(eng["delay_gap"]["text"], "delay 5")
        self.assertEqual(eng["pack99"]["text"], "pack 0 99 1")
        self.assertEqual(eng["pack98"]["text"], "pack 0 98 0")
        self.assertEqual(eng["pack6"]["text"], "pack 0 6 0")
        self.assertEqual(eng["pack38"]["text"], "pack 0 38 0")
        self.assertEqual(eng["pack101"]["text"], "pack 0 101 127")
        self.assertEqual(eng["pack100"]["text"], "pack 0 100 127")
        self.assertEqual(
            eng["mode_off_msg"]["text"],
            " ".join(str(v) for v in masks(0, 0, [])),
        )

    def test_cc_order_is_spec_order_then_advance(self):
        eng = by_var(self.engine)
        trig = eng["status_trig"]["id"]
        by_outlet = {}
        for src, dst in links(self.engine):
            if src[0] == trig:
                by_outlet[src[1]] = dst
        names = {box["id"]: box["varname"] for box in boxes(self.engine) if box.get("varname")}
        self.assertEqual(
            [names[by_outlet[i][0]] for i in range(6, 0, -1)],
            ["pack99", "pack98", "pack6", "pack38", "pack101", "pack100"],
        )
        self.assertEqual(names[by_outlet[0][0]], "idx_int")
        for name in ("pack99", "pack98", "pack6", "pack38", "pack101", "pack100"):
            self.assertIn(
                ([eng[name]["id"], 0], [eng["out_0"]["id"], 0]),
                links(self.engine),
            )

    def test_no_firmware_mode_or_memory_writes(self):
        parent = by_var(self.patcher)
        for patcher in (
            self.patcher,
            self.engine,
            parent["lights"]["patcher"],
            parent["manual"]["patcher"],
        ):
            for box in boxes(patcher):
                text = box.get("text", "")
                if box["maxclass"] == "comment":
                    continue
                self.assertNotIn("245", text)
                for cc in (23, 24):
                    self.assertFalse(text.startswith(f"pack 0 {cc} "))

    def test_scale_name_does_not_enter_the_math(self):
        eng = by_var(self.engine)
        name_in = eng["in_2"]["id"]
        targets = [dst for src, dst in links(self.engine) if src[0] == name_in]
        self.assertEqual(len(targets), 1)
        self.assertEqual(targets[0][0], eng["t_name"]["id"])

    def test_channel_parameter_range(self):
        numbox = by_var(self.patcher)["midi_channel"]
        value = numbox["saved_attribute_attributes"]["valueof"]
        self.assertEqual(value["parameter_mmin"], 1.0)
        self.assertEqual(value["parameter_mmax"], 16.0)
        self.assertEqual(value["parameter_initial"], [1])
        self.assertEqual(numbox["parameter_enable"], 1)

    def test_gate_messages_enter_on_the_right(self):
        # Max gate: inlet 0 chooses the outlet (0 closed, 1 open). Inlet 1 is the message.
        eng = by_var(self.engine)
        data_from = {
            "final_gate": {"pack24"},
            "scale_gate": {"final_gate", "mode_off_msg"},
            "manual_gate": {"in_7"},
            "enabled_gate": {"scale_gate", "manual_gate"},
            "intervals_gate": {"reg_intervals"},
            "pc_gate": {"t_pc"},
            "nth_gate": {"reg_values"},
        }
        names = {box["id"]: box.get("varname") for box in boxes(self.engine)}
        for gate, sources in data_from.items():
            for src, dst in links(self.engine):
                if dst[0] != eng[gate]["id"]:
                    continue
                if names[src[0]] in sources:
                    self.assertEqual(dst[1], 1, names[src[0]])
                else:
                    self.assertEqual(dst[1], 0, names[src[0]])

    def test_no_empty_parameter_banks(self):
        self.assertNotIn("parameters", self.patcher)

    def test_parameters_are_channel_and_follow(self):
        visible = {
            box.get("varname")
            for box in boxes(self.patcher)
            if box.get("parameter_enable") == 1
            and box.get("saved_attribute_attributes", {}).get("valueof", {}).get("parameter_invisible") != 2
        }
        self.assertEqual(visible, {"midi_channel", "scale_mark"})
        follow = by_var(self.patcher)["scale_mark"]["saved_attribute_attributes"]["valueof"]
        self.assertEqual(follow["parameter_longname"], "Follow Scale")
        self.assertEqual(follow["parameter_initial"], [1])
        self.assertNotIn("root_menu", by_var(self.patcher))

    def test_scale_button_follows_and_greys_out_without_a_scale(self):
        parent = by_var(self.patcher)
        mark = parent["scale_mark"]
        self.assertEqual(mark["pictures"], ["scale.svg", "scale.svg"])
        self.assertEqual(mark["usepicture"], 1)
        self.assertEqual(mark["mode"], 1)
        self.assertEqual(mark["rounded"], 0)
        self.assertEqual(mark["outputmode"], 1)
        self.assertEqual(parent["grey_scale"]["text"], "active 0")
        self.assertEqual(parent["arm_scale"]["text"], "active 1")
        self.assertIn(
            ([parent["grey_scale"]["id"], 0], [mark["id"], 0]),
            links(self.patcher),
        )
        self.assertIn(
            ([parent["sel_scale"]["id"], 0], [parent["grey_scale"]["id"], 0]),
            links(self.patcher),
        )
        self.assertEqual(parent["expr_follow"]["text"], "expr $i1 * $i2")

    def test_reset_button_seeds_c_major_only_in_manual_mode(self):
        parent = by_var(self.patcher)
        manual = parent["manual"]["id"]
        reset = parent["reset_scale"]["id"]
        cords = links(self.patcher)
        c_major = [str(v) for v in masks(1, 0, [0, 2, 4, 5, 7, 9, 11])]
        self.assertEqual(parent["reset_mask"]["text"].split(), c_major)
        self.assertIn(([parent["reset_mask"]["id"], 0], [manual, 0]), cords)
        self.assertIn(([parent["reset_root"]["id"], 0], [manual, 1]), cords)
        self.assertEqual(parent["reset_root"]["text"], "0")
        for name in ("block_clicks", "show_clicks", "grey_reset", "arm_reset"):
            self.assertIn(([parent[name]["id"], 0], [reset, 0]), cords)
        self.assertIn(([parent["sel_follow"]["id"], 1], [parent["grey_reset"]["id"], 0]), cords)
        self.assertIn(([parent["sel_follow"]["id"], 0], [parent["arm_reset"]["id"], 0]), cords)

    def test_colour_queries_follow_the_last_light(self):
        eng = by_var(self.engine)
        cords = links(self.engine)
        self.assertIn(([eng["sel_last"]["id"], 0], [eng["delay_query"]["id"], 0]), cords)
        self.assertIn(([eng["msg_stop"]["id"], 0], [eng["delay_query"]["id"], 0]), cords)
        self.assertEqual(
            [eng[f"query_{key}"]["text"] for key, *_rest in COLOR_SETTINGS],
            ["299 30", "299 31", "299 32", "299 33"],
        )
        for key, *_rest in COLOR_SETTINGS:
            self.assertIn(([eng[f"query_{key}"]["id"], 0], [eng["t_nrpn"]["id"], 0]), cords)

    def test_nrpn_encoder_is_spec_order(self):
        eng = by_var(self.engine)
        cords = links(self.engine)
        trig = eng["nrpn_trig"]["id"]
        by_outlet = {src[1]: dst[0] for src, dst in cords if src[0] == trig}
        names = {box["id"]: box.get("varname") for box in boxes(self.engine)}
        self.assertEqual(
            [names[by_outlet[i]] for i in range(5, -1, -1)],
            ["nrpn99", "nrpn98", "nrpn6", "nrpn38", "nrpn101", "nrpn100"],
        )
        self.assertEqual(eng["nrpn99_byte"]["text"], "/ 128")
        self.assertEqual(eng["nrpn98_byte"]["text"], "% 128")
        self.assertIn(([eng["in_8"]["id"], 0], [eng["t_nrpn"]["id"], 0]), cords)

    def test_reply_parser_routes_the_four_colours(self):
        reply_patch = by_var(self.patcher)["reply"]["patcher"]
        reply = by_var(reply_patch)
        cords = links(reply_patch)
        self.assertEqual(reply["route_cc"]["text"], "route 99 98 6 38 101 100")
        self.assertEqual(reply["route_param"]["text"], "route 30 31 32 33")
        self.assertEqual(reply["valid_played"]["text"], "split 0 11")
        self.assertEqual(reply["valid_main"]["text"], "split 1 11")
        self.assertIn(([reply["route_cc"]["id"], 3], [reply["pack_nrpn"]["id"], 0]), cords)
        self.assertIn(([reply["void_param"]["id"], 0], [reply["pack_nrpn"]["id"], 1]), cords)

    def test_colour_swatches_send_and_replies_only_mark(self):
        parent = by_var(self.patcher)
        cords = links(self.patcher)
        engine = parent["engine"]["id"]
        for i, (key, number, label, default, lowest) in enumerate(COLOR_SETTINGS):
            row = sorted(
                (box for box in boxes(self.patcher)
                 if box["maxclass"] == "panel" and box.get("varname", "").startswith(f"swatch_{key}_")),
                key=lambda box: box["presentation_rect"][0],
            )
            colours = [int(box["varname"].rsplit("_", 1)[1]) for box in row]
            self.assertEqual(colours, [n for n in RAINBOW_ORDER if n >= lowest])
            self.assertEqual(len({box["presentation_rect"][1] for box in row}), 1)
            for colour, box in zip(colours, row):
                fill = LINN_COLORS[colour][1]
                self.assertEqual(box["bgfillcolor"], [*fill, 1.0])
                self.assertEqual(box["bordercolor"], [*text_for(fill), 1.0])
                pick = parent[f"swatch_pick_{key}_{colour}"]
                self.assertEqual(pick["text"], str(colour))
                self.assertIn(([parent[f"swatch_button_{key}_{colour}"]["id"], 0], [pick["id"], 0]), cords)
                self.assertIn(([pick["id"], 0], [parent[f"changed_{key}"]["id"], 0]), cords)
            self.assertEqual(parent[f"changed_{key}"]["text"], f"change {default}")
            self.assertIn(([parent[f"known_{key}"]["id"], 0], [parent[f"changed_{key}"]["id"], 0]), cords)
            self.assertEqual(parent[f"send_{key}"]["text"], f"prepend {number}")
            self.assertIn(([parent[f"send_{key}"]["id"], 0], [engine, 8]), cords)
            self.assertIn(([parent["reply"]["id"], i], [parent[f"t_heard_{key}"]["id"], 0]), cords)
            heard_targets = {dst[0] for src, dst in cords if src[0] == parent[f"t_heard_{key}"]["id"]}
            self.assertNotIn(parent[f"send_{key}"]["id"], heard_targets)
        self.assertIn(([parent["apply_accent"]["id"], 0], [parent["lights"]["id"], 1]), cords)
        self.assertIn(([parent["apply_main"]["id"], 0], [parent["lights"]["id"], 2]), cords)

    def test_gear_swaps_the_main_and_settings_screens(self):
        parent = by_var(self.patcher)
        gear = parent["gear"]
        self.assertEqual(gear["pictures"], ["gear.svg", "gear.svg"])
        self.assertEqual(gear["saved_attribute_attributes"]["valueof"]["parameter_invisible"], 2)
        widest = max(box["presentation_rect"][0] + box["presentation_rect"][2]
                     for box in boxes(self.patcher) if box.get("presentation"))
        self.assertEqual(gear["presentation_rect"][0] + gear["presentation_rect"][2], widest)
        self.assertEqual(gear["presentation_rect"][1], 6)
        settings = {box["varname"] for box in boxes(self.patcher)
                    if box.get("presentation") and box.get("hidden") == 1}
        self.assertIn("midi_channel", settings)
        self.assertTrue(all(not parent[f"pad_{pc}"].get("hidden") for pc in range(12)))
        show_settings = parent["show_settings"]["text"].split(", ")
        show_main = parent["show_main"]["text"].split(", ")
        for name in settings:
            self.assertIn(f"script show {name}", show_settings)
            self.assertIn(f"script hide {name}", show_main)
        for pc in range(12):
            self.assertIn(f"script hide pad_{pc}", show_settings)
            self.assertIn(f"script show pad_{pc}", show_main)
        cords = links(self.patcher)
        self.assertIn(([parent["sel_screen"]["id"], 1], [parent["show_settings"]["id"], 0]), cords)
        self.assertIn(([parent["show_settings"]["id"], 0], [parent["screen_patcher"]["id"], 0]), cords)

    def test_text_is_readable_on_every_colour(self):
        def luminance(rgb):
            r, g, b = rgb
            return 0.2126 * r + 0.7152 * g + 0.0722 * b
        for _name, fill in LINN_COLORS.values():
            self.assertGreaterEqual(abs(luminance(fill) - luminance(text_for(fill))), 0.5)

    def test_shift_click_sets_the_root_in_manual_mode(self):
        parent = by_var(self.patcher)
        manual = parent["manual"]["id"]
        cords = links(self.patcher)
        self.assertEqual(parent["click_gate"]["text"], "gate 2")
        self.assertIn(([parent["modifiers"]["id"], 0], [parent["shift_choice"]["id"], 0]), cords)
        self.assertIn(([parent["click_gate"]["id"], 0], [manual, 2]), cords)
        self.assertIn(([parent["t_shift_root"]["id"], 1], [manual, 4]), cords)
        self.assertIn(([parent["t_shift_root"]["id"], 0], [manual, 1]), cords)
        for pc in range(12):
            self.assertIn(([parent[f"click_{pc}"]["id"], 0], [parent["t_click"]["id"], 0]), cords)

    def test_presentation_fits_the_live_device_height(self):
        for box in boxes(self.patcher):
            if not box.get("presentation"):
                continue
            x, y, w, h = box["presentation_rect"]
            for value in (x, y, w, h):
                self.assertEqual(value, int(value))
            self.assertLessEqual(y + h, DEVICE_HEIGHT)
            if box["maxclass"] == "live.text":
                self.assertEqual(box["rounded"], 0)

    def test_note_grid_is_the_linnstrument_global_page(self):
        parent = by_var(self.patcher)
        rows = {}
        for pc in range(12):
            pad = parent[f"pad_{pc}"]
            self.assertEqual(pad["text"], NOTE_NAMES[pc])
            self.assertEqual(pad["texton"], NOTE_NAMES[pc])
            self.assertEqual(pad["parameter_enable"], 1)
            self.assertEqual(pad["saved_attribute_attributes"]["valueof"]["parameter_invisible"], 2)
            self.assertEqual(pad["mode"], 1)
            self.assertEqual(pad["appearance"], 0)
            self.assertEqual(pad["activetextoncolor"], [*text_for(DEFAULT_MAIN), 1.0])
            self.assertNotIn("hint", pad)
            x, y, _w, _h = pad["presentation_rect"]
            rows.setdefault(y, []).append((x, pc))
        ordered = [ [pc for _x, pc in sorted(rows[y])] for y in sorted(rows) ]
        self.assertEqual(ordered, [
            [9, 10, 11],
            [6, 7, 8],
            [3, 4, 5],
            [0, 1, 2],
        ])
        columns = {}
        for pc in range(12):
            x = parent[f"pad_{pc}"]["presentation_rect"][0]
            columns.setdefault(x, []).append(pc)
        self.assertEqual(
            [sorted(columns[x]) for x in sorted(columns)],
            [[0, 3, 6, 9], [1, 4, 7, 10], [2, 5, 8, 11]],
        )

    def test_pad_colors_follow_the_same_mask_as_the_nrpns(self):
        parent = by_var(self.patcher)
        eng = by_var(self.engine)
        light_vars = by_var(parent["lights"]["patcher"])
        mask_sources = {
            src[0]
            for src, dst in links(self.engine)
            if dst == [eng["out_1"]["id"], 0]
        }
        self.assertEqual(
            mask_sources,
            {eng["scale_gate"]["id"], eng["manual_gate"]["id"]},
        )
        self.assertIn(
            ([parent["manual"]["id"], 0], [parent["engine"]["id"], 7]),
            links(self.patcher),
        )
        for pc in range(12):
            self.assertEqual(light_vars[f"state_{pc}"]["text"], "expr $i2 * 2 + $i1")
            self.assertEqual(light_vars[f"bg_0_{pc}"]["text"], DARK_BG)
            self.assertEqual(light_vars[f"bgi_0_{pc}"]["text"], DARK_BG_INACTIVE)
            self.assertEqual(light_vars[f"bg_1_{pc}"]["text"], MAIN_ON)
            self.assertEqual(light_vars[f"bgi_1_{pc}"]["text"], MAIN_ON_INACTIVE)
            self.assertEqual(light_vars[f"bg_2_{pc}"]["text"], ACCENT_ON)
            self.assertEqual(light_vars[f"bgi_2_{pc}"]["text"], ACCENT_ON_INACTIVE)
            self.assertEqual(light_vars[f"fg_0_{pc}"]["text"], DIM_TEXT)
            self.assertEqual(light_vars[f"fgi_0_{pc}"]["text"], DIM_TEXT_INACTIVE)
            self.assertEqual(light_vars[f"fg_1_{pc}"]["text"], MAIN_TEXT)
            self.assertEqual(light_vars[f"fgi_1_{pc}"]["text"], MAIN_TEXT_INACTIVE)
            self.assertEqual(light_vars[f"fg_2_{pc}"]["text"], ACCENT_TEXT)
            self.assertEqual(light_vars[f"fgi_2_{pc}"]["text"], ACCENT_TEXT_INACTIVE)
            self.assertEqual(light_vars[f"val_0_{pc}"]["text"], "set 0")
            self.assertEqual(light_vars[f"val_1_{pc}"]["text"], "set 1")
            self.assertEqual(light_vars[f"val_2_{pc}"]["text"], "set 1")
            self.assertIn(
                ([parent["lights"]["id"], pc], [parent[f"pad_{pc}"]["id"], 0]),
                links(self.patcher),
            )


class ProjectFileTest(unittest.TestCase):
    def test_maxproj_opens_the_local_patcher(self):
        root = Path(__file__).resolve().parents[1]
        project = json.loads((root / "LinnStrumentScaleLights.maxproj").read_text())
        patcher = project["contents"]["patchers"]["LinnStrumentScaleLights.maxpat"]
        self.assertEqual(patcher["kind"], "patcher")
        self.assertEqual(patcher["local"], 1)
        self.assertEqual(patcher["toplevel"], 1)
        self.assertTrue((root / "LinnStrumentScaleLights.maxpat").is_file())
        self.assertEqual(project["autoorganize"], 0)
        self.assertEqual(project["amxdtype"], 2)
        self.assertEqual(project["devpathtype"], 1)
        self.assertEqual(project["devpath"], ".")


if __name__ == "__main__":
    unittest.main()
