"""Reference scale-to-NRPN math for the LinnStrument lights device.

The Max patch implements this same mapping. Pitch class is
(root_note + interval) mod 12. NRPN numbers and the CC reset are the
ones in the scale-sync spec, not a separate palette.
"""

NOTE_NAMES = ("C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B")

# Main C..B, then Accent C..B.
MAIN_BASE = 203
ACCENT_BASE = 215
NRPN_COUNT = 24
NRPN_GAP_MS = 5


def wrap_pc(value):
    return int(value) % 12


def masks(scale_mode, root_note, intervals):
    """24 ints: Main C..B, then Accent C..B. Each entry is 0 or 1."""
    root = wrap_pc(root_note)
    if not int(scale_mode):
        return [1] * 12 + [0] * 12
    main = [0] * 12
    accent = [0] * 12
    accent[root] = 1
    for interval in intervals:
        pc = wrap_pc(root_note + int(interval))
        if pc != root:
            main[pc] = 1
    return main + accent


def parameter_number(index):
    """Index 0..11 Main C..B, 12..23 Accent C..B. Equals 203 + index."""
    if not 0 <= index < NRPN_COUNT:
        raise IndexError(index)
    return MAIN_BASE + index


def nrpn_messages(index, value, channel):
    """Six 3-byte CC messages for one light NRPN, including the reset.

    Spec example for parameter 203 (index 0), channel 1:
    CC 99=1, CC 98=75, CC 6=0, CC 38=value, CC 101=127, CC 100=127.
    """
    channel = int(channel)
    if not 1 <= channel <= 16:
        raise ValueError(channel)
    value = 1 if int(value) else 0
    param = parameter_number(index)
    status = 0xB0 + (channel - 1)
    lsb = param - 128
    return (
        (status, 99, 1),
        (status, 98, lsb),
        (status, 6, 0),
        (status, 38, value),
        (status, 101, 127),
        (status, 100, 127),
    )


def full_update(scale_mode, root_note, intervals, channel):
    values = masks(scale_mode, root_note, intervals)
    messages = []
    for index, value in enumerate(values):
        messages.extend(nrpn_messages(index, value, channel))
    return values, messages
