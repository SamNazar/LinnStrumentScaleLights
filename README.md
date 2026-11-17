# LinnStrument Scale Lights

Max for Live MIDI effect that lights a LinnStrument from the scale of the clip selected in Ableton Live 12.

It watches the current scale chooser (`live_set` `scale_mode`, `root_note`, `scale_name`, `scale_intervals`) and the clip shown in Detail View (`live_set view` `detail_clip`). When any of those change, or when the selected clip changes even if the scale values do not, it sends a full set of LinnStrument Main and Accent pitch-class NRPNs.

Pitch class is `(root_note + interval) mod 12`, using `scale_intervals` only. `scale_name` is not used for the math.

It shows the same 12 pitch classes as the LinnStrument global settings page: three columns x four rows. Unlit notes are dark.

- Follow Scale on, and Live has a scale selected: the grid follows that scale. The note buttons are not editable.
- Follow Scale on, but Live has no scale selected: the button is greyed out and the notes can be edited.
- Follow Scale off: click a note to turn its light on or off. Shift-click a note to make it the root; it lights if it was dark. Reset goes back to C major.

While following a scale, Scale Mode on lights the root as Accent and the other scale degrees as Main. Scale Mode off is not a selected scale, so the device does not force every Main light on. A manual pattern sends the same NRPN rules: the root is Accent, every other lit note is Main, and dark notes are off.

Main is NRPN 203–214 for C through B. Accent is NRPN 215–226 for C through B. Each NRPN is CC 99 = 1, CC 98 = parameter − 128, CC 6 = 0, CC 38 = 0 or 1, then the reset CC 101 = 127 and CC 100 = 127. The device sends all 24, with 5 ms between them. It does not change Live’s scale, does not enable User Firmware mode, and does not store or clear custom light memories.

The surface has to already be on a pitch-class note-lights preset (the panel memories C through G#). Custom memories A, A#, and B ignore these NRPNs, so the pads will not follow the clip while one of those is selected. This device does not switch presets.

The gear at the top right opens the settings screen in place of the grid: the MIDI channel, and swatch rows for the Main, Accent, Played and Low Row colors, in rainbow order with white, black and off last. The current color is outlined. The colors are those of the split selected on the LinnStrument (NRPN 201), which is the split whose colors cover the surface when split is off: NRPN 30 to 33 for the left split, 130 to 133 for the right. Clicking a swatch sends that NRPN and repaints the grid: lit notes use Main and the root uses Accent, with black or white text chosen for readability. After each light update, and every 2 seconds while the device is on, it asks for the selected split and both splits' colors (NRPN 299), so changes made on the LinnStrument show up on the device. The answers only reach the device if this track's MIDI From is the LinnStrument and the track is monitoring, so keep Monitor on In, or on Auto with the track armed, whenever you want the colors read; Live drops incoming MIDI on a track that isn't monitoring. Saving Monitor In in your Live template covers startup, and it doesn't echo your playing back to the LinnStrument because the device passes no incoming MIDI through. While the track isn't monitoring, the lights and swatch clicks still work, but the device keeps the last colors it heard until monitoring is back on. Without them the swatches start at the left split's firmware defaults (green, cyan, red, yellow) and nothing is sent until you click one.

## Open it in Max

`LinnStrumentScaleLights.maxproj` is the Max project for this folder. Open that file in Max on your computer. The patcher is set to open with the project.

The `LinnStrumentScaleLights.amxd` in this folder is already a MIDI effect. Live 12 loads that file directly. Exporting from Max is only needed if you want Max to rewrite the device.

In the project window, **Manage Project → Export as a Max for Live Device** uses device type MIDI and writes `LinnStrumentScaleLights.amxd` here. In the Project Inspector, Development Path Type is **relative** and Development Path is `.`. Keep Project Folder Organized stays off so Max leaves `LinnStrumentScaleLights.maxpat` where it is.

If the inspector shows the development path as disabled, set it back to relative and `.` before exporting. While that setting is disabled, Max writes the device to `~/Documents/Max 8/Max for Live Devices` on Mac, or `Documents\Max 8\Max for Live Devices` on Windows. Max 9 uses the Max 9 folder of the same name.

## Drop it on a track in Live 12

1. Put `LinnStrumentScaleLights.amxd` on a MIDI track of its own. It does not need incoming notes, and it does not pass notes through.
2. Set that track’s **MIDI To** to the LinnStrument. Leave **MIDI From** on No Input. In Live’s MIDI preferences, Track must be enabled for the LinnStrument output port. The track itself has to be enabled.
3. Set **Channel** on the device to the split’s Main channel. LinnStrument’s defaults are channel 1 for the left split and channel 16 for the right split.
4. Select a clip. The pads light from that clip’s scale. **Resend** reads the current scale again and sends all 24 NRPNs, which is the way to push the pattern after you change note-lights presets on the instrument.

The playing track is separate. Its **MIDI From** stays on the LinnStrument and its **MIDI To** stays on the synth. Do not put this device on that track. If the same track takes notes from the LinnStrument and sends them back, Live feeds those notes into the controller and the Note Ons light every matching pad in the Played color on top of the scale. A Control Surface script that also writes the pads will overwrite this device; do not run both.

What moves the lights is the scale of the clip selected in Clip View, including an audio clip’s stored scale. A different scale on a clip that is only playing, and not selected, does not move the lights.

## Files

- `LinnStrumentScaleLights.maxproj` is the project to open in Max.
- `LinnStrumentScaleLights.maxpat` is the patcher.
- `LinnStrumentScaleLights.amxd` is the MIDI effect to drop into Live. `tools/build_device.py` regenerates it. The header type is `mmmm`, so Live routes `midiout` to the track's MIDI To.
- `tools/test_device.py` checks the scale math, the patcher wiring, and the project file.

## License

GNU General Public License v3.0 or later. See `LICENSE`.
