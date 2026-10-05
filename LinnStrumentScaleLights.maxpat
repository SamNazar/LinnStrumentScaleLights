{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 1,
      "revision": 4,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      80.0,
      80.0,
      1100.0,
      760.0
    ],
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15.0,
      15.0
    ],
    "gridsnaponopen": 1,
    "objectsnaponopen": 1,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-1",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "live.thisdevice",
          "varname": "thisdevice",
          "patching_rect": [
            40.0,
            40.0,
            121.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-2",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "deferlow",
          "varname": "defer_init",
          "patching_rect": [
            40.0,
            90.0,
            72.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-3",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "t b b b",
          "varname": "t_init",
          "patching_rect": [
            40.0,
            130.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-4",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "live.path live_set",
          "varname": "path_set",
          "patching_rect": [
            40.0,
            190.0,
            142.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-5",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "live.path live_set view",
          "varname": "path_view",
          "patching_rect": [
            220.0,
            190.0,
            177.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-6",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "text": "t l l l l",
          "varname": "t_ids",
          "patching_rect": [
            40.0,
            240.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-7",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "live.observer scale_mode",
          "varname": "obs_mode",
          "patching_rect": [
            40.0,
            300.0,
            184.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-8",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "deferlow",
          "varname": "def_0",
          "patching_rect": [
            40.0,
            340.0,
            72.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-9",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "live.observer root_note",
          "varname": "obs_root",
          "patching_rect": [
            230.0,
            300.0,
            177.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-10",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "deferlow",
          "varname": "def_1",
          "patching_rect": [
            230.0,
            340.0,
            72.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-11",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "live.observer scale_name",
          "varname": "obs_name",
          "patching_rect": [
            420.0,
            300.0,
            184.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-12",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "deferlow",
          "varname": "def_2",
          "patching_rect": [
            420.0,
            340.0,
            72.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-13",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "live.observer scale_intervals",
          "varname": "obs_intervals",
          "patching_rect": [
            640.0,
            300.0,
            219.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-14",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "deferlow",
          "varname": "def_3",
          "patching_rect": [
            640.0,
            340.0,
            72.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-15",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "live.observer detail_clip",
          "varname": "obs_clip",
          "patching_rect": [
            900.0,
            300.0,
            191.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-16",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "deferlow",
          "varname": "def_clip",
          "patching_rect": [
            900.0,
            340.0,
            72.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-17",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "text": "t b b b b",
          "varname": "t_reread",
          "patching_rect": [
            40.0,
            400.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-18",
          "maxclass": "newobj",
          "numinlets": 6,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "p engine",
          "varname": "engine",
          "patching_rect": [
            40.0,
            460.0,
            72.0,
            22.0
          ],
          "patcher": {
            "fileversion": 1,
            "appversion": {
              "major": 9,
              "minor": 1,
              "revision": 4,
              "architecture": "x64",
              "modernui": 1
            },
            "classnamespace": "box",
            "rect": [
              40.0,
              40.0,
              1200.0,
              800.0
            ],
            "openinpresentation": 0,
            "default_fontsize": 12.0,
            "default_fontface": 0,
            "default_fontname": "Arial",
            "gridonopen": 1,
            "gridsize": [
              15.0,
              15.0
            ],
            "gridsnaponopen": 1,
            "objectsnaponopen": 1,
            "statusbarvisible": 2,
            "toolbarvisible": 1,
            "boxes": [
              {
                "box": {
                  "id": "obj-1",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "varname": "in_0",
                  "index": 0,
                  "comment": "scale_mode",
                  "patching_rect": [
                    24.0,
                    28.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "varname": "in_1",
                  "index": 1,
                  "comment": "root_note",
                  "patching_rect": [
                    24.0,
                    68.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "varname": "in_2",
                  "index": 2,
                  "comment": "scale_name, display only",
                  "patching_rect": [
                    24.0,
                    108.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "varname": "in_3",
                  "index": 3,
                  "comment": "scale_intervals",
                  "patching_rect": [
                    24.0,
                    148.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "varname": "in_4",
                  "index": 4,
                  "comment": "MIDI channel",
                  "patching_rect": [
                    24.0,
                    188.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "varname": "in_5",
                  "index": 5,
                  "comment": "device enabled",
                  "patching_rect": [
                    24.0,
                    228.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "out_0",
                  "index": 0,
                  "comment": "MIDI bytes",
                  "patching_rect": [
                    1680.0,
                    28.0,
                    100.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "out_1",
                  "index": 1,
                  "comment": "status line",
                  "patching_rect": [
                    1680.0,
                    68.0,
                    100.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "mode_int",
                  "patching_rect": [
                    250.0,
                    28.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-10",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "root_int",
                  "patching_rect": [
                    250.0,
                    68.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "flag_mode",
                  "patching_rect": [
                    360.0,
                    28.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "flag_root",
                  "patching_rect": [
                    360.0,
                    68.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-13",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "flag_intervals",
                  "patching_rect": [
                    360.0,
                    148.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "len_int",
                  "patching_rect": [
                    560.0,
                    188.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-15",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "zl.reg",
                  "varname": "reg_intervals",
                  "patching_rect": [
                    700.0,
                    148.0,
                    58.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "channel_int",
                  "patching_rect": [
                    250.0,
                    188.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-17",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "enabled_int",
                  "patching_rect": [
                    250.0,
                    228.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "zl.len",
                  "varname": "zl_len",
                  "patching_rect": [
                    460.0,
                    188.0,
                    58.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-19",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "loadmess 1",
                  "varname": "load_channel",
                  "patching_rect": [
                    24.0,
                    268.0,
                    86.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "delay 50",
                  "varname": "delay_debounce",
                  "patching_rect": [
                    900.0,
                    28.0,
                    72.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-21",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "text": "t i 1 b",
                  "varname": "t_mode",
                  "patching_rect": [
                    130.0,
                    28.0,
                    65.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "text": "t i 1 b",
                  "varname": "t_root",
                  "patching_rect": [
                    130.0,
                    68.0,
                    65.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-23",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "t b",
                  "varname": "t_name",
                  "patching_rect": [
                    130.0,
                    108.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t l l 1 b",
                  "varname": "t_intervals",
                  "patching_rect": [
                    130.0,
                    148.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-25",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t i b",
                  "varname": "t_channel",
                  "patching_rect": [
                    130.0,
                    188.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t i i",
                  "varname": "t_enabled",
                  "patching_rect": [
                    130.0,
                    228.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "gate",
                  "varname": "enabled_gate",
                  "patching_rect": [
                    1400.0,
                    228.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "stop",
                  "varname": "msg_stop",
                  "patching_rect": [
                    560.0,
                    228.0,
                    42.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "sel 0",
                  "varname": "sel_enabled_off",
                  "patching_rect": [
                    400.0,
                    228.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-30",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "delay 5",
                  "varname": "delay_gap",
                  "patching_rect": [
                    1400.0,
                    268.0,
                    65.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-31",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b",
                  "varname": "t_ready",
                  "patching_rect": [
                    900.0,
                    80.0,
                    65.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-32",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * $i2 * $i3",
                  "varname": "expr_ready",
                  "patching_rect": [
                    1060.0,
                    80.0,
                    156.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-33",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "sel 1",
                  "varname": "sel_ready",
                  "patching_rect": [
                    1260.0,
                    80.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-34",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "sel 1",
                  "varname": "sel_enabled_go",
                  "patching_rect": [
                    1400.0,
                    80.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b b",
                  "varname": "t_build",
                  "patching_rect": [
                    900.0,
                    320.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-36",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr (($i1 % 12) + 12) % 12",
                  "varname": "expr_root",
                  "patching_rect": [
                    400.0,
                    320.0,
                    205.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-37",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "root_pc",
                  "patching_rect": [
                    660.0,
                    320.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-38",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 13,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "route 0 1 2 3 4 5 6 7 8 9 10 11",
                  "varname": "route_root",
                  "patching_rect": [
                    660.0,
                    360.0,
                    233.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-39",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "C",
                  "varname": "note_0",
                  "patching_rect": [
                    660.0,
                    420.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-40",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "C#",
                  "varname": "note_1",
                  "patching_rect": [
                    710.0,
                    420.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-41",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "D",
                  "varname": "note_2",
                  "patching_rect": [
                    760.0,
                    420.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-42",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "D#",
                  "varname": "note_3",
                  "patching_rect": [
                    810.0,
                    420.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-43",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "E",
                  "varname": "note_4",
                  "patching_rect": [
                    860.0,
                    420.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-44",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "F",
                  "varname": "note_5",
                  "patching_rect": [
                    910.0,
                    420.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-45",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "F#",
                  "varname": "note_6",
                  "patching_rect": [
                    660.0,
                    446.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-46",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "G",
                  "varname": "note_7",
                  "patching_rect": [
                    710.0,
                    446.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-47",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "G#",
                  "varname": "note_8",
                  "patching_rect": [
                    760.0,
                    446.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "A",
                  "varname": "note_9",
                  "patching_rect": [
                    810.0,
                    446.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-49",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "A#",
                  "varname": "note_10",
                  "patching_rect": [
                    860.0,
                    446.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "B",
                  "varname": "note_11",
                  "patching_rect": [
                    910.0,
                    446.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-51",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "on",
                  "varname": "msg_on",
                  "patching_rect": [
                    400.0,
                    490.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-52",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "off",
                  "varname": "msg_off",
                  "patching_rect": [
                    460.0,
                    490.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "sprintf \"set Scale mode %s | root %s\"",
                  "varname": "sprintf_status",
                  "patching_rect": [
                    980.0,
                    490.0,
                    275.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "+ 0",
                  "varname": "plus_root",
                  "patching_rect": [
                    820.0,
                    360.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-55",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "!= 0",
                  "varname": "not_root",
                  "patching_rect": [
                    900.0,
                    360.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-56",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "pack 0 1",
                  "varname": "pack_accent",
                  "patching_rect": [
                    980.0,
                    360.0,
                    72.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-57",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 13,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "route 0 1 2 3 4 5 6 7 8 9 10 11",
                  "varname": "route_accent",
                  "patching_rect": [
                    980.0,
                    410.0,
                    233.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-58",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0",
                  "varname": "mode_off_msg",
                  "patching_rect": [
                    250.0,
                    540.0,
                    326.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-59",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1",
                  "varname": "sel_mode",
                  "patching_rect": [
                    130.0,
                    540.0,
                    65.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-60",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b",
                  "varname": "t_mode_on",
                  "patching_rect": [
                    400.0,
                    540.0,
                    65.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-61",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_0",
                  "patching_rect": [
                    24.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-62",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_1",
                  "patching_rect": [
                    78.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-63",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_2",
                  "patching_rect": [
                    132.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-64",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_3",
                  "patching_rect": [
                    186.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-65",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_4",
                  "patching_rect": [
                    240.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-66",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_5",
                  "patching_rect": [
                    294.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-67",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_6",
                  "patching_rect": [
                    348.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-68",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_7",
                  "patching_rect": [
                    402.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-69",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_8",
                  "patching_rect": [
                    456.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-70",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_9",
                  "patching_rect": [
                    510.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-71",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_10",
                  "patching_rect": [
                    564.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-72",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_11",
                  "patching_rect": [
                    618.0,
                    600.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-73",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_12",
                  "patching_rect": [
                    24.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-74",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_13",
                  "patching_rect": [
                    78.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-75",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_14",
                  "patching_rect": [
                    132.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-76",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_15",
                  "patching_rect": [
                    186.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-77",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_16",
                  "patching_rect": [
                    240.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-78",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_17",
                  "patching_rect": [
                    294.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-79",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_18",
                  "patching_rect": [
                    348.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_19",
                  "patching_rect": [
                    402.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-81",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_20",
                  "patching_rect": [
                    456.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-82",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_21",
                  "patching_rect": [
                    510.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-83",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_22",
                  "patching_rect": [
                    564.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-84",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "bit_23",
                  "patching_rect": [
                    618.0,
                    634.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-85",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 24,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0",
                  "varname": "t_clear",
                  "patching_rect": [
                    24.0,
                    690.0,
                    359.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-86",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 24,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b b b b b b b b b b b b b b b b b b b b",
                  "varname": "t_read",
                  "patching_rect": [
                    24.0,
                    730.0,
                    359.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-87",
                  "maxclass": "newobj",
                  "numinlets": 24,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "pack i i i i i i i i i i i i i i i i i i i i i i i i",
                  "varname": "pack24",
                  "patching_rect": [
                    24.0,
                    780.0,
                    380.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-88",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "gate",
                  "varname": "final_gate",
                  "patching_rect": [
                    24.0,
                    820.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-89",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "gate",
                  "varname": "intervals_gate",
                  "patching_rect": [
                    700.0,
                    220.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-90",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "append finished",
                  "varname": "append_end",
                  "patching_rect": [
                    820.0,
                    220.0,
                    121.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-91",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "iter",
                  "varname": "iterator",
                  "patching_rect": [
                    980.0,
                    220.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-92",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "route finished",
                  "varname": "route_end",
                  "patching_rect": [
                    1060.0,
                    220.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-93",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "interval_int",
                  "patching_rect": [
                    1200.0,
                    220.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-94",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr (($i1 % 12) + 12) % 12",
                  "varname": "expr_mod",
                  "patching_rect": [
                    1200.0,
                    270.0,
                    205.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-95",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "pc_int",
                  "patching_rect": [
                    1460.0,
                    270.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-96",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t i i",
                  "varname": "t_pc",
                  "patching_rect": [
                    1460.0,
                    310.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-97",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "gate",
                  "varname": "pc_gate",
                  "patching_rect": [
                    1580.0,
                    310.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-98",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "pack 0 1",
                  "varname": "pack_main",
                  "patching_rect": [
                    1580.0,
                    350.0,
                    72.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-99",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 13,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "route 0 1 2 3 4 5 6 7 8 9 10 11",
                  "varname": "route_main",
                  "patching_rect": [
                    1580.0,
                    390.0,
                    233.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-100",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t 0 b 1 0",
                  "varname": "t_finish",
                  "patching_rect": [
                    820.0,
                    820.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-101",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "sel 0",
                  "varname": "sel_len",
                  "patching_rect": [
                    560.0,
                    540.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-102",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "t b",
                  "varname": "t_len_go",
                  "patching_rect": [
                    700.0,
                    540.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-103",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b 1",
                  "varname": "t_iter",
                  "patching_rect": [
                    700.0,
                    260.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-104",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "zl.reg",
                  "varname": "reg_values",
                  "patching_rect": [
                    250.0,
                    980.0,
                    58.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-105",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "gate",
                  "varname": "nth_gate",
                  "patching_rect": [
                    380.0,
                    980.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-106",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "zl.nth",
                  "varname": "zl_nth",
                  "patching_rect": [
                    480.0,
                    980.0,
                    58.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-107",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b l 0 b",
                  "varname": "t_begin",
                  "patching_rect": [
                    80.0,
                    940.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-108",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 3,
                  "outlettype": [
                    "",
                    "",
                    ""
                  ],
                  "text": "t 0 b 1",
                  "varname": "t_start",
                  "patching_rect": [
                    80.0,
                    990.0,
                    65.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-109",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "0",
                  "varname": "msg_zero",
                  "patching_rect": [
                    80.0,
                    1030.0,
                    36.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-110",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b i i i",
                  "varname": "t_index",
                  "patching_rect": [
                    250.0,
                    1060.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-111",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr 75 + $i1",
                  "varname": "expr_lsb",
                  "patching_rect": [
                    480.0,
                    1060.0,
                    107.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-112",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 + 1",
                  "varname": "expr_nth",
                  "patching_rect": [
                    640.0,
                    1060.0,
                    100.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-113",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "idx_int",
                  "patching_rect": [
                    800.0,
                    1060.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-114",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_value",
                  "patching_rect": [
                    480.0,
                    1120.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-115",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "clip 1 16",
                  "varname": "clip_channel",
                  "patching_rect": [
                    360.0,
                    130.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-116",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr 175 + $i1",
                  "varname": "expr_status",
                  "patching_rect": [
                    480.0,
                    130.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-117",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "status_int",
                  "patching_rect": [
                    640.0,
                    130.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-118",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 7,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b i i i i i i",
                  "varname": "status_trig",
                  "patching_rect": [
                    640.0,
                    1120.0,
                    121.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-119",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "sel 23",
                  "varname": "sel_last",
                  "patching_rect": [
                    980.0,
                    1060.0,
                    58.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-120",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "+ 1",
                  "varname": "plus_one",
                  "patching_rect": [
                    1100.0,
                    1060.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-121",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_next",
                  "patching_rect": [
                    1220.0,
                    1060.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-122",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "next_int",
                  "patching_rect": [
                    1360.0,
                    1060.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-123",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "pack 0 99 1",
                  "varname": "pack99",
                  "patching_rect": [
                    250.0,
                    1180.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-124",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "pack 0 98 0",
                  "varname": "pack98",
                  "patching_rect": [
                    400.0,
                    1180.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-125",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "pack 0 6 0",
                  "varname": "pack6",
                  "patching_rect": [
                    550.0,
                    1180.0,
                    86.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-126",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "pack 0 38 0",
                  "varname": "pack38",
                  "patching_rect": [
                    700.0,
                    1180.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-127",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "pack 0 101 127",
                  "varname": "pack101",
                  "patching_rect": [
                    850.0,
                    1180.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-128",
                  "maxclass": "newobj",
                  "numinlets": 3,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "pack 0 100 127",
                  "varname": "pack100",
                  "patching_rect": [
                    1040.0,
                    1180.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-129",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "text": "Scale mode on: Accent for the root, Main for every other pitch class in scale_intervals, both off otherwise. Scale mode off: Main on for all 12, Accent off. NRPN 203+index. Each NRPN is CC 99=1, CC 98=parameter-128, CC 6=0, CC 38=0 or 1, CC 101=127, CC 100=127, then a short gap. scale_name is not an input to this math.",
                  "patching_rect": [
                    24.0,
                    1280.0,
                    1100.0,
                    52.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "obj-1",
                    0
                  ],
                  "destination": [
                    "obj-21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-21",
                    2
                  ],
                  "destination": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-21",
                    1
                  ],
                  "destination": [
                    "obj-11",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-21",
                    0
                  ],
                  "destination": [
                    "obj-9",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-2",
                    0
                  ],
                  "destination": [
                    "obj-22",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-22",
                    2
                  ],
                  "destination": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-22",
                    1
                  ],
                  "destination": [
                    "obj-12",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-22",
                    0
                  ],
                  "destination": [
                    "obj-10",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-3",
                    0
                  ],
                  "destination": [
                    "obj-23",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-23",
                    0
                  ],
                  "destination": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    0
                  ],
                  "destination": [
                    "obj-24",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-24",
                    3
                  ],
                  "destination": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-24",
                    2
                  ],
                  "destination": [
                    "obj-13",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-24",
                    1
                  ],
                  "destination": [
                    "obj-18",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-18",
                    0
                  ],
                  "destination": [
                    "obj-14",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-24",
                    0
                  ],
                  "destination": [
                    "obj-15",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-5",
                    0
                  ],
                  "destination": [
                    "obj-25",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-25",
                    1
                  ],
                  "destination": [
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-25",
                    0
                  ],
                  "destination": [
                    "obj-16",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-19",
                    0
                  ],
                  "destination": [
                    "obj-16",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    0
                  ],
                  "destination": [
                    "obj-26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-26",
                    1
                  ],
                  "destination": [
                    "obj-29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-26",
                    1
                  ],
                  "destination": [
                    "obj-27",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-26",
                    0
                  ],
                  "destination": [
                    "obj-17",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-29",
                    0
                  ],
                  "destination": [
                    "obj-28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-28",
                    0
                  ],
                  "destination": [
                    "obj-30",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-20",
                    0
                  ],
                  "destination": [
                    "obj-31",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-31",
                    2
                  ],
                  "destination": [
                    "obj-13",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-31",
                    1
                  ],
                  "destination": [
                    "obj-12",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-31",
                    0
                  ],
                  "destination": [
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    0
                  ],
                  "destination": [
                    "obj-32",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-12",
                    0
                  ],
                  "destination": [
                    "obj-32",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    0
                  ],
                  "destination": [
                    "obj-32",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-32",
                    0
                  ],
                  "destination": [
                    "obj-33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-33",
                    0
                  ],
                  "destination": [
                    "obj-17",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-17",
                    0
                  ],
                  "destination": [
                    "obj-34",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    0
                  ],
                  "destination": [
                    "obj-39",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    1
                  ],
                  "destination": [
                    "obj-40",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    2
                  ],
                  "destination": [
                    "obj-41",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    3
                  ],
                  "destination": [
                    "obj-42",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    4
                  ],
                  "destination": [
                    "obj-43",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    5
                  ],
                  "destination": [
                    "obj-44",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    6
                  ],
                  "destination": [
                    "obj-45",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    7
                  ],
                  "destination": [
                    "obj-46",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    8
                  ],
                  "destination": [
                    "obj-47",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    9
                  ],
                  "destination": [
                    "obj-48",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    10
                  ],
                  "destination": [
                    "obj-49",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-38",
                    11
                  ],
                  "destination": [
                    "obj-50",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-39",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-40",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-41",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-42",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-43",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-44",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-45",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-46",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-47",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-48",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-49",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-50",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-51",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-52",
                    0
                  ],
                  "destination": [
                    "obj-53",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-53",
                    0
                  ],
                  "destination": [
                    "obj-8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-10",
                    0
                  ],
                  "destination": [
                    "obj-36",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-36",
                    0
                  ],
                  "destination": [
                    "obj-37",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-37",
                    0
                  ],
                  "destination": [
                    "obj-38",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-37",
                    0
                  ],
                  "destination": [
                    "obj-54",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-37",
                    0
                  ],
                  "destination": [
                    "obj-55",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-37",
                    0
                  ],
                  "destination": [
                    "obj-56",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-56",
                    0
                  ],
                  "destination": [
                    "obj-57",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-34",
                    0
                  ],
                  "destination": [
                    "obj-35",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-35",
                    1
                  ],
                  "destination": [
                    "obj-10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-35",
                    0
                  ],
                  "destination": [
                    "obj-9",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-9",
                    0
                  ],
                  "destination": [
                    "obj-59",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-59",
                    0
                  ],
                  "destination": [
                    "obj-52",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-59",
                    0
                  ],
                  "destination": [
                    "obj-58",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-59",
                    1
                  ],
                  "destination": [
                    "obj-51",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-59",
                    1
                  ],
                  "destination": [
                    "obj-60",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-60",
                    2
                  ],
                  "destination": [
                    "obj-85",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-60",
                    1
                  ],
                  "destination": [
                    "obj-10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-60",
                    0
                  ],
                  "destination": [
                    "obj-14",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    0
                  ],
                  "destination": [
                    "obj-61",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    0
                  ],
                  "destination": [
                    "obj-61",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    1
                  ],
                  "destination": [
                    "obj-62",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    1
                  ],
                  "destination": [
                    "obj-62",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    2
                  ],
                  "destination": [
                    "obj-63",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    2
                  ],
                  "destination": [
                    "obj-63",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    3
                  ],
                  "destination": [
                    "obj-64",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    3
                  ],
                  "destination": [
                    "obj-64",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    4
                  ],
                  "destination": [
                    "obj-65",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    4
                  ],
                  "destination": [
                    "obj-65",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    5
                  ],
                  "destination": [
                    "obj-66",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    5
                  ],
                  "destination": [
                    "obj-66",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    6
                  ],
                  "destination": [
                    "obj-67",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    6
                  ],
                  "destination": [
                    "obj-67",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    7
                  ],
                  "destination": [
                    "obj-68",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    7
                  ],
                  "destination": [
                    "obj-68",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    8
                  ],
                  "destination": [
                    "obj-69",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    8
                  ],
                  "destination": [
                    "obj-69",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    9
                  ],
                  "destination": [
                    "obj-70",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    9
                  ],
                  "destination": [
                    "obj-70",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    10
                  ],
                  "destination": [
                    "obj-71",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    10
                  ],
                  "destination": [
                    "obj-71",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    11
                  ],
                  "destination": [
                    "obj-72",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    11
                  ],
                  "destination": [
                    "obj-72",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    12
                  ],
                  "destination": [
                    "obj-73",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    12
                  ],
                  "destination": [
                    "obj-73",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    13
                  ],
                  "destination": [
                    "obj-74",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    13
                  ],
                  "destination": [
                    "obj-74",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    14
                  ],
                  "destination": [
                    "obj-75",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    14
                  ],
                  "destination": [
                    "obj-75",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    15
                  ],
                  "destination": [
                    "obj-76",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    15
                  ],
                  "destination": [
                    "obj-76",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    16
                  ],
                  "destination": [
                    "obj-77",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    16
                  ],
                  "destination": [
                    "obj-77",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    17
                  ],
                  "destination": [
                    "obj-78",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    17
                  ],
                  "destination": [
                    "obj-78",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    18
                  ],
                  "destination": [
                    "obj-79",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    18
                  ],
                  "destination": [
                    "obj-79",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    19
                  ],
                  "destination": [
                    "obj-80",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    19
                  ],
                  "destination": [
                    "obj-80",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    20
                  ],
                  "destination": [
                    "obj-81",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    20
                  ],
                  "destination": [
                    "obj-81",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    21
                  ],
                  "destination": [
                    "obj-82",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    21
                  ],
                  "destination": [
                    "obj-82",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    22
                  ],
                  "destination": [
                    "obj-83",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    22
                  ],
                  "destination": [
                    "obj-83",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-85",
                    23
                  ],
                  "destination": [
                    "obj-84",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-86",
                    23
                  ],
                  "destination": [
                    "obj-84",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    0
                  ],
                  "destination": [
                    "obj-73",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    1
                  ],
                  "destination": [
                    "obj-74",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    2
                  ],
                  "destination": [
                    "obj-75",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    3
                  ],
                  "destination": [
                    "obj-76",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    4
                  ],
                  "destination": [
                    "obj-77",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    5
                  ],
                  "destination": [
                    "obj-78",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    6
                  ],
                  "destination": [
                    "obj-79",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    7
                  ],
                  "destination": [
                    "obj-80",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    8
                  ],
                  "destination": [
                    "obj-81",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    9
                  ],
                  "destination": [
                    "obj-82",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    10
                  ],
                  "destination": [
                    "obj-83",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-57",
                    11
                  ],
                  "destination": [
                    "obj-84",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-61",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-62",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-63",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-64",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    3
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-65",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    4
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-66",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    5
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-67",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    6
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-68",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    7
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-69",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    8
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-70",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    9
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-71",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    10
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-72",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    11
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-73",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    12
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-74",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    13
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-75",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    14
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-76",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    15
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-77",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    16
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-78",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    17
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-79",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    18
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-80",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    19
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-81",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    20
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-82",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    21
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-83",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    22
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-84",
                    0
                  ],
                  "destination": [
                    "obj-87",
                    23
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-87",
                    0
                  ],
                  "destination": [
                    "obj-88",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-88",
                    0
                  ],
                  "destination": [
                    "obj-27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-58",
                    0
                  ],
                  "destination": [
                    "obj-27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-15",
                    0
                  ],
                  "destination": [
                    "obj-89",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-89",
                    0
                  ],
                  "destination": [
                    "obj-90",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-90",
                    0
                  ],
                  "destination": [
                    "obj-91",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-91",
                    0
                  ],
                  "destination": [
                    "obj-92",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-92",
                    1
                  ],
                  "destination": [
                    "obj-93",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-93",
                    0
                  ],
                  "destination": [
                    "obj-54",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-54",
                    0
                  ],
                  "destination": [
                    "obj-94",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-94",
                    0
                  ],
                  "destination": [
                    "obj-95",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-95",
                    0
                  ],
                  "destination": [
                    "obj-96",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-96",
                    1
                  ],
                  "destination": [
                    "obj-55",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-55",
                    0
                  ],
                  "destination": [
                    "obj-97",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-96",
                    0
                  ],
                  "destination": [
                    "obj-97",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-97",
                    0
                  ],
                  "destination": [
                    "obj-98",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-98",
                    0
                  ],
                  "destination": [
                    "obj-99",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    0
                  ],
                  "destination": [
                    "obj-61",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    1
                  ],
                  "destination": [
                    "obj-62",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    2
                  ],
                  "destination": [
                    "obj-63",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    3
                  ],
                  "destination": [
                    "obj-64",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    4
                  ],
                  "destination": [
                    "obj-65",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    5
                  ],
                  "destination": [
                    "obj-66",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    6
                  ],
                  "destination": [
                    "obj-67",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    7
                  ],
                  "destination": [
                    "obj-68",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    8
                  ],
                  "destination": [
                    "obj-69",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    9
                  ],
                  "destination": [
                    "obj-70",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    10
                  ],
                  "destination": [
                    "obj-71",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-99",
                    11
                  ],
                  "destination": [
                    "obj-72",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-92",
                    0
                  ],
                  "destination": [
                    "obj-100",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-100",
                    3
                  ],
                  "destination": [
                    "obj-89",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-100",
                    2
                  ],
                  "destination": [
                    "obj-88",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-100",
                    1
                  ],
                  "destination": [
                    "obj-86",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-100",
                    0
                  ],
                  "destination": [
                    "obj-88",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-14",
                    0
                  ],
                  "destination": [
                    "obj-101",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-101",
                    0
                  ],
                  "destination": [
                    "obj-100",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-101",
                    1
                  ],
                  "destination": [
                    "obj-102",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-102",
                    0
                  ],
                  "destination": [
                    "obj-103",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-103",
                    1
                  ],
                  "destination": [
                    "obj-89",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-103",
                    0
                  ],
                  "destination": [
                    "obj-15",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-123",
                    0
                  ],
                  "destination": [
                    "obj-7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-124",
                    0
                  ],
                  "destination": [
                    "obj-7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-125",
                    0
                  ],
                  "destination": [
                    "obj-7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-126",
                    0
                  ],
                  "destination": [
                    "obj-7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-127",
                    0
                  ],
                  "destination": [
                    "obj-7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-128",
                    0
                  ],
                  "destination": [
                    "obj-7",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-118",
                    1
                  ],
                  "destination": [
                    "obj-128",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-118",
                    2
                  ],
                  "destination": [
                    "obj-127",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-118",
                    3
                  ],
                  "destination": [
                    "obj-126",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-118",
                    4
                  ],
                  "destination": [
                    "obj-125",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-118",
                    5
                  ],
                  "destination": [
                    "obj-124",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-118",
                    6
                  ],
                  "destination": [
                    "obj-123",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-118",
                    0
                  ],
                  "destination": [
                    "obj-113",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-27",
                    0
                  ],
                  "destination": [
                    "obj-107",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-107",
                    3
                  ],
                  "destination": [
                    "obj-28",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-107",
                    2
                  ],
                  "destination": [
                    "obj-105",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-107",
                    1
                  ],
                  "destination": [
                    "obj-104",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-107",
                    0
                  ],
                  "destination": [
                    "obj-108",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-108",
                    2
                  ],
                  "destination": [
                    "obj-105",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-108",
                    1
                  ],
                  "destination": [
                    "obj-16",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-108",
                    0
                  ],
                  "destination": [
                    "obj-109",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-109",
                    0
                  ],
                  "destination": [
                    "obj-110",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-16",
                    0
                  ],
                  "destination": [
                    "obj-115",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-115",
                    0
                  ],
                  "destination": [
                    "obj-116",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-116",
                    0
                  ],
                  "destination": [
                    "obj-117",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-110",
                    3
                  ],
                  "destination": [
                    "obj-111",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-111",
                    0
                  ],
                  "destination": [
                    "obj-124",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-110",
                    2
                  ],
                  "destination": [
                    "obj-112",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-112",
                    0
                  ],
                  "destination": [
                    "obj-106",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-110",
                    1
                  ],
                  "destination": [
                    "obj-113",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-110",
                    0
                  ],
                  "destination": [
                    "obj-104",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-104",
                    0
                  ],
                  "destination": [
                    "obj-105",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-105",
                    0
                  ],
                  "destination": [
                    "obj-106",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-106",
                    0
                  ],
                  "destination": [
                    "obj-114",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-114",
                    1
                  ],
                  "destination": [
                    "obj-126",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-114",
                    0
                  ],
                  "destination": [
                    "obj-117",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-117",
                    0
                  ],
                  "destination": [
                    "obj-118",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-113",
                    0
                  ],
                  "destination": [
                    "obj-119",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-119",
                    1
                  ],
                  "destination": [
                    "obj-120",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-120",
                    0
                  ],
                  "destination": [
                    "obj-121",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-121",
                    1
                  ],
                  "destination": [
                    "obj-122",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-121",
                    0
                  ],
                  "destination": [
                    "obj-30",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-30",
                    0
                  ],
                  "destination": [
                    "obj-122",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-122",
                    0
                  ],
                  "destination": [
                    "obj-110",
                    0
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "obj-19",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "loadmess 1",
          "varname": "load_enabled",
          "patching_rect": [
            200.0,
            40.0,
            86.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-20",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "midiout",
          "varname": "midi_out",
          "patching_rect": [
            280.0,
            460.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-21",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "midiin",
          "varname": "midi_in",
          "patching_rect": [
            280.0,
            520.0,
            58.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-22",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend set",
          "varname": "prepend_name",
          "patching_rect": [
            420.0,
            380.0,
            93.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-23",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "LinnStrument Scale Lights",
          "patching_rect": [
            700.0,
            28.0,
            240.0,
            22.0
          ],
          "fontface": 1,
          "fontsize": 13.0,
          "presentation": 1,
          "presentation_rect": [
            16.0,
            8.0,
            250.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-24",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "Channel",
          "patching_rect": [
            700.0,
            58.0,
            56.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            36.0,
            54.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-25",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "text": "1",
          "varname": "midi_channel",
          "parameter_enable": 1,
          "presentation": 1,
          "hint": "Main channel of the split you are lighting. Left split defaults to 1, right split to 16.",
          "patching_rect": [
            770.0,
            56.0,
            52.0,
            18.0
          ],
          "presentation_rect": [
            74.0,
            34.0,
            48.0,
            18.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "MIDI Channel",
              "parameter_shortname": "Channel",
              "parameter_type": 1,
              "parameter_mmin": 1.0,
              "parameter_mmax": 16.0,
              "parameter_initial": [
                1
              ],
              "parameter_initial_enable": 1,
              "parameter_unitstyle": 0
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "Resend",
          "varname": "resend",
          "mode": 0,
          "border": 1,
          "parameter_enable": 0,
          "presentation": 1,
          "hint": "Read the current Live scale again and send all 24 light NRPNs.",
          "patching_rect": [
            840.0,
            52.0,
            72.0,
            22.0
          ],
          "presentation_rect": [
            136.0,
            32.0,
            72.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "MIDI To: LinnStrument",
          "patching_rect": [
            700.0,
            86.0,
            180.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            220.0,
            36.0,
            250.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "Waiting for the Live scale",
          "varname": "status_comment",
          "patching_rect": [
            700.0,
            112.0,
            420.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            62.0,
            460.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "Scale name",
          "varname": "name_comment",
          "patching_rect": [
            700.0,
            138.0,
            420.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            16.0,
            84.0,
            460.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "MIDI effect for its own track. midiin is not connected, so performance notes are not echoed and none are required. midiout is what Live sends to this track's MIDI To. Observe live_set scale_mode, root_note, scale_name, scale_intervals, and live_set view detail_clip. detail_clip bangs the four Song observers so a clip change is re-read even when the values match. Does not set Song scale properties, does not enable User Firmware mode, and does not write or clear custom light memories. Pitch-class presets only: custom memories A, A#, and B ignore Main and Accent NRPNs 203 through 226.",
          "patching_rect": [
            40.0,
            580.0,
            860.0,
            72.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "obj-6",
            0
          ],
          "destination": [
            "obj-7",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-7",
            0
          ],
          "destination": [
            "obj-8",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-6",
            1
          ],
          "destination": [
            "obj-9",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-9",
            0
          ],
          "destination": [
            "obj-10",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-6",
            2
          ],
          "destination": [
            "obj-11",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-11",
            0
          ],
          "destination": [
            "obj-12",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-6",
            3
          ],
          "destination": [
            "obj-13",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-13",
            0
          ],
          "destination": [
            "obj-14",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-5",
            0
          ],
          "destination": [
            "obj-15",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-15",
            0
          ],
          "destination": [
            "obj-16",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-16",
            0
          ],
          "destination": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-17",
            0
          ],
          "destination": [
            "obj-7",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-17",
            1
          ],
          "destination": [
            "obj-9",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-17",
            2
          ],
          "destination": [
            "obj-11",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-17",
            3
          ],
          "destination": [
            "obj-13",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-1",
            0
          ],
          "destination": [
            "obj-2",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-2",
            0
          ],
          "destination": [
            "obj-3",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-3",
            2
          ],
          "destination": [
            "obj-4",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-3",
            1
          ],
          "destination": [
            "obj-5",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-4",
            0
          ],
          "destination": [
            "obj-6",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-8",
            0
          ],
          "destination": [
            "obj-18",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-10",
            0
          ],
          "destination": [
            "obj-18",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-12",
            0
          ],
          "destination": [
            "obj-18",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-14",
            0
          ],
          "destination": [
            "obj-18",
            3
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-1",
            1
          ],
          "destination": [
            "obj-18",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-19",
            0
          ],
          "destination": [
            "obj-18",
            5
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-18",
            0
          ],
          "destination": [
            "obj-20",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-12",
            0
          ],
          "destination": [
            "obj-22",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-25",
            0
          ],
          "destination": [
            "obj-18",
            4
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-3",
            0
          ],
          "destination": [
            "obj-25",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-26",
            0
          ],
          "destination": [
            "obj-17",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-18",
            1
          ],
          "destination": [
            "obj-28",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            0
          ],
          "destination": [
            "obj-29",
            0
          ]
        }
      }
    ],
    "description": "Lights a LinnStrument from the scale of the clip selected in Live 12.",
    "digest": "LinnStrument scale lights"
  }
}
