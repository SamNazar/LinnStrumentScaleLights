#!/usr/bin/env python3
"""Checks the scale math and the generated Max patcher. Does not open Max."""

import json
import struct
import sys
import unittest
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from build_device import amxd_bytes, build_document, dumps
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
        self.assertEqual(blob[8:16], b"aaaameta")
        self.assertEqual(blob[24:28], b"ptch")
        ptch = blob.index(b"ptch")
        length = struct.unpack_from("<I", blob, ptch + 4)[0]
        payload = blob[ptch + 8:ptch + 8 + length]
        self.assertEqual(payload, raw)
        self.assertEqual(json.loads(payload), self.doc)

    def test_every_cord_lands_on_a_real_inlet(self):
        for patcher in (self.patcher, self.engine):
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
        midiin = by_var(self.patcher)["midi_in"]["id"]
        self.assertFalse(any(src[0] == midiin for src, _dst in links(self.patcher)))

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
        for patcher in (self.patcher, self.engine):
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

    def test_no_empty_parameter_banks(self):
        self.assertNotIn("parameters", self.patcher)


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
