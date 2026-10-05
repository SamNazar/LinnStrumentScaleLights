# LinnStrument Scale Lights

Max for Live MIDI effect that lights a LinnStrument from the scale of the clip selected in Ableton Live 12.

It watches the current scale chooser (`live_set` `scale_mode`, `root_note`, `scale_name`, `scale_intervals`) and the clip shown in Detail View (`live_set view` `detail_clip`). When any of those change, or when the selected clip changes even if the scale values do not, it sends a full set of LinnStrument Main and Accent pitch-class NRPNs.

Pitch class is `(root_note + interval) mod 12`, using `scale_intervals` only. `scale_name` is shown on the device and is not used for the math.

- Scale Mode on: Accent on for the root, Main on for the other scale degrees, both off for every other pitch class.
- Scale Mode off: all 12 Main pitch classes on, all 12 Accent pitch classes off.

Main is NRPN 203–214 for C through B. Accent is NRPN 215–226 for C through B. Each NRPN is CC 99 = 1, CC 98 = parameter − 128, CC 6 = 0, CC 38 = 0 or 1, then the reset CC 101 = 127 and CC 100 = 127. The device sends all 24, with 5 ms between them. It does not change Live’s scale, does not enable User Firmware mode, and does not store or clear custom light memories.

The surface has to already be on a pitch-class note-lights preset (the panel memories C through G#). Custom memories A, A#, and B ignore these NRPNs, so the pads will not follow the clip while one of those is selected. This device does not switch presets.

Colors are whatever Main and Accent are already set to on the split. The device does not send color NRPNs.

## Drop it on a track in Live 12

1. Put `LinnStrumentScaleLights.amxd` on a MIDI track of its own. It does not need incoming notes, and it does not pass notes through.
2. Set that track’s **MIDI To** to the LinnStrument. Leave **MIDI From** on No Input. In Live’s MIDI preferences, Track must be enabled for the LinnStrument output port. The track itself has to be enabled.
3. Set **Channel** on the device to the split’s Main channel. LinnStrument’s defaults are channel 1 for the left split and channel 16 for the right split.
4. Select a clip. The pads light from that clip’s scale. **Resend** reads the current scale again and sends all 24 NRPNs, which is the way to push the pattern after you change note-lights presets on the instrument.

The playing track is separate. Its **MIDI From** stays on the LinnStrument and its **MIDI To** stays on the synth. Do not put this device on that track. If the same track takes notes from the LinnStrument and sends them back, Live feeds those notes into the controller and the Note Ons light every matching pad in the Played color on top of the scale. A Control Surface script that also writes the pads will overwrite this device; do not run both.

What moves the lights is the scale of the clip selected in Clip View, including an audio clip’s stored scale. A different scale on a clip that is only playing, and not selected, does not move the lights.

## Files

- `LinnStrumentScaleLights.amxd` is the device.
- `LinnStrumentScaleLights.maxpat` is the same patcher as JSON.
- `tools/build_device.py` regenerates both. `tools/test_device.py` checks the scale math and the patcher wiring.

Max was not installed in the environment that produced these files, and they were not opened in Max or Live and were not run on a LinnStrument. The `.amxd` is a 32-byte `ampf` / `ptch` header plus the JSON patcher, which is the container Max 9.1 (the Max line bundled with current Live 12 releases) reads. If a newer Max only opens the `mx@c` archive form, open the `.maxpat` in Max and save it as an `.amxd`.
