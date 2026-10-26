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
          "numinlets": 8,
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
                  "index": 1,
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
                  "index": 2,
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
                  "index": 3,
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
                  "index": 4,
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
                  "index": 5,
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
                  "index": 6,
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
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "varname": "in_6",
                  "index": 7,
                  "comment": "follow Live scale",
                  "patching_rect": [
                    24.0,
                    268.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "inlet",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "varname": "in_7",
                  "index": 8,
                  "comment": "manual light mask",
                  "patching_rect": [
                    24.0,
                    308.0,
                    110.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "out_0",
                  "index": 1,
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
                  "id": "obj-10",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "out_1",
                  "index": 2,
                  "comment": "Main C-B then Accent C-B",
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
                  "id": "obj-11",
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
                  "id": "obj-12",
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
                  "id": "obj-13",
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
                  "id": "obj-14",
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
                  "id": "obj-15",
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
                  "id": "obj-16",
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
                  "id": "obj-17",
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
                  "id": "obj-18",
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
                  "id": "obj-19",
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
                  "id": "obj-20",
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
                  "id": "obj-21",
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
                  "id": "obj-22",
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
                  "id": "obj-23",
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
                  "id": "obj-24",
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
                  "id": "obj-25",
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
                  "id": "obj-26",
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
                  "id": "obj-27",
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
                  "id": "obj-28",
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
                  "id": "obj-29",
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
                  "id": "obj-30",
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
                  "id": "obj-31",
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
                  "id": "obj-32",
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
                  "id": "obj-33",
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
                  "id": "obj-34",
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
                  "id": "obj-35",
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
                  "id": "obj-36",
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
                  "id": "obj-37",
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
                  "id": "obj-38",
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
                  "id": "obj-39",
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
                  "id": "obj-40",
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
                  "id": "obj-41",
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
                  "id": "obj-42",
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
                  "id": "obj-43",
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
                  "id": "obj-44",
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
                  "id": "obj-45",
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
                  "id": "obj-46",
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
                  "id": "obj-47",
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
                  "id": "obj-48",
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
                  "id": "obj-49",
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
                  "id": "obj-50",
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
                  "id": "obj-51",
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
                  "id": "obj-52",
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
                  "id": "obj-53",
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
                  "id": "obj-54",
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
                  "id": "obj-55",
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
                  "id": "obj-56",
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
                  "id": "obj-57",
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
                  "id": "obj-58",
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
                  "id": "obj-59",
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
                  "id": "obj-60",
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
                  "id": "obj-61",
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
                  "id": "obj-62",
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
                  "id": "obj-63",
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
                  "id": "obj-64",
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
                  "id": "obj-65",
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
                  "id": "obj-66",
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
                  "id": "obj-67",
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
                  "id": "obj-68",
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
                  "id": "obj-69",
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
                  "id": "obj-70",
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
                  "id": "obj-71",
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
                  "id": "obj-72",
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
                  "id": "obj-73",
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
                  "id": "obj-74",
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
                  "id": "obj-75",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "follow_int",
                  "patching_rect": [
                    250.0,
                    268.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-76",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr 1 - $i1",
                  "varname": "expr_manual",
                  "patching_rect": [
                    360.0,
                    268.0,
                    100.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-77",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "sel 1",
                  "varname": "sel_follow_on",
                  "patching_rect": [
                    480.0,
                    268.0,
                    51.0,
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
                  "text": "gate",
                  "varname": "scale_gate",
                  "patching_rect": [
                    24.0,
                    860.0,
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
                  "text": "gate",
                  "varname": "manual_gate",
                  "patching_rect": [
                    24.0,
                    900.0,
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
                  "id": "obj-81",
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
                  "id": "obj-82",
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
                  "id": "obj-83",
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
                  "id": "obj-84",
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
                  "id": "obj-85",
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
                  "id": "obj-86",
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
                  "id": "obj-87",
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
                  "id": "obj-88",
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
                  "id": "obj-89",
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
                  "id": "obj-90",
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
                  "id": "obj-91",
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
                  "id": "obj-92",
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
                  "id": "obj-93",
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
                  "id": "obj-94",
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
                  "id": "obj-95",
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
                  "id": "obj-96",
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
                  "id": "obj-97",
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
                  "id": "obj-98",
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
                  "id": "obj-99",
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
                  "id": "obj-100",
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
                  "id": "obj-101",
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
                  "id": "obj-102",
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
                  "id": "obj-103",
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
                  "id": "obj-104",
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
                  "id": "obj-105",
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
                  "id": "obj-106",
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
                  "id": "obj-107",
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
                  "id": "obj-108",
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
                  "id": "obj-109",
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
                  "id": "obj-110",
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
                  "id": "obj-111",
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
                  "id": "obj-112",
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
                  "id": "obj-113",
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
                  "id": "obj-114",
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
                  "id": "obj-115",
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
                  "id": "obj-116",
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
                  "id": "obj-117",
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
                  "id": "obj-118",
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
                  "id": "obj-119",
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
                  "id": "obj-120",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "text": "Follow on and scale mode on: Accent for the root, Main for every other pitch class in scale_intervals, both off otherwise. Follow off: the manual mask is Accent for the chosen root when that note is lit, Main for every other lit note. NRPN 203+index. Each NRPN is CC 99=1, CC 98=parameter-128, CC 6=0, CC 38=0 or 1, CC 101=127, CC 100=127, then a short gap. scale_name is not an input to this math.",
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
                    "obj-23",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-23",
                    2
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
                    "obj-23",
                    1
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
                    "obj-23",
                    0
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
                    "obj-2",
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
                    2
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
                    "obj-24",
                    1
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
                    "obj-12",
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
                    "obj-25",
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
                    "obj-22",
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
                    "obj-26",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-26",
                    3
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
                    "obj-26",
                    2
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
                    "obj-26",
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
                    "obj-20",
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
                    "obj-5",
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
                    "obj-27",
                    1
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
                    "obj-27",
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
                    "obj-21",
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
                    "obj-6",
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
                    1
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
                    "obj-28",
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
                    "obj-28",
                    0
                  ],
                  "destination": [
                    "obj-19",
                    1
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
                    "obj-32",
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
                    "obj-33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-33",
                    2
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
                    "obj-33",
                    1
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
                    "obj-33",
                    0
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
                    "obj-15",
                    0
                  ],
                  "destination": [
                    "obj-34",
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
                    "obj-34",
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
                    "obj-34",
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
                    0
                  ],
                  "destination": [
                    "obj-19",
                    0
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
                    "obj-36",
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
                    "obj-38",
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
                    "obj-39",
                    0
                  ],
                  "destination": [
                    "obj-40",
                    1
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
                    "obj-41",
                    1
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
                    "obj-42",
                    0
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
                    "obj-43",
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
                    "obj-37",
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
                    "obj-11",
                    0
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
                    "obj-45",
                    0
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
                    "obj-45",
                    1
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
                    "obj-46",
                    2
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
                    "obj-46",
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
                    "obj-46",
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
                    "obj-71",
                    0
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
                    "obj-72",
                    0
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
                    "obj-71",
                    1
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
                    "obj-72",
                    1
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
                    "obj-71",
                    2
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
                    "obj-72",
                    2
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
                    "obj-71",
                    3
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
                    "obj-72",
                    3
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
                    "obj-71",
                    4
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
                    "obj-72",
                    4
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
                    "obj-71",
                    5
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
                    "obj-72",
                    5
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
                    "obj-71",
                    6
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
                    "obj-72",
                    6
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
                    "obj-71",
                    7
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
                    "obj-72",
                    7
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
                    "obj-71",
                    8
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
                    "obj-72",
                    8
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
                    "obj-71",
                    9
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
                    "obj-72",
                    9
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
                    "obj-71",
                    10
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
                    "obj-72",
                    10
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
                    "obj-71",
                    11
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
                    "obj-72",
                    11
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
                    "obj-71",
                    12
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
                    "obj-72",
                    12
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
                    "obj-71",
                    13
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
                    "obj-72",
                    13
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
                    "obj-71",
                    14
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
                    "obj-72",
                    14
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
                    "obj-71",
                    15
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
                    "obj-72",
                    15
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
                    "obj-71",
                    16
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
                    "obj-72",
                    16
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
                    "obj-71",
                    17
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
                    "obj-72",
                    17
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
                    "obj-71",
                    18
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
                    "obj-72",
                    18
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
                    "obj-71",
                    19
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
                    "obj-72",
                    19
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
                    "obj-71",
                    20
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
                    "obj-72",
                    20
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
                    "obj-71",
                    21
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
                    "obj-72",
                    21
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
                    "obj-71",
                    22
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
                    "obj-72",
                    22
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
                    "obj-71",
                    23
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
                    "obj-72",
                    23
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
                    "obj-43",
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
                    "obj-43",
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
                    "obj-43",
                    2
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
                    "obj-43",
                    3
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
                    "obj-43",
                    4
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
                    "obj-43",
                    5
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
                    "obj-43",
                    6
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
                    "obj-43",
                    7
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
                    "obj-43",
                    8
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
                    "obj-43",
                    9
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
                    "obj-43",
                    10
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
                    "obj-43",
                    11
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
                    "obj-47",
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
                    "obj-48",
                    0
                  ],
                  "destination": [
                    "obj-73",
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
                    "obj-73",
                    2
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
                    "obj-73",
                    3
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
                    "obj-73",
                    4
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
                    "obj-73",
                    5
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
                    "obj-73",
                    6
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
                    "obj-73",
                    7
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
                    "obj-73",
                    8
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
                    "obj-73",
                    9
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
                    10
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
                    "obj-73",
                    11
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
                    "obj-73",
                    12
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
                    "obj-73",
                    13
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
                    "obj-73",
                    14
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
                    "obj-73",
                    15
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
                    "obj-73",
                    16
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
                    "obj-73",
                    17
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
                    "obj-73",
                    18
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
                    "obj-73",
                    19
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
                    "obj-73",
                    20
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
                    "obj-73",
                    21
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
                    "obj-73",
                    22
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
                    "obj-73",
                    23
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
                    "obj-74",
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
                    "obj-75",
                    0
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
                    "obj-78",
                    0
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
                    "obj-76",
                    0
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
                    "obj-77",
                    0
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
                    "obj-22",
                    0
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
                    "obj-79",
                    0
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
                    "obj-78",
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
                    "obj-78",
                    1
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
                    "obj-79",
                    1
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
                    "obj-29",
                    1
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
                    "obj-29",
                    1
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
                    "obj-10",
                    0
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
                    "obj-10",
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
                    "obj-80",
                    1
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
                    "obj-81",
                    0
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
                    "obj-82",
                    0
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
                    "obj-83",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-83",
                    1
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
                    "obj-84",
                    0
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
                    "obj-40",
                    0
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
                    "obj-85",
                    0
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
                    "obj-86",
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
                    "obj-87",
                    1
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
                    "obj-41",
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
                    "obj-87",
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
                    "obj-88",
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
                    "obj-47",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-90",
                    1
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
                    "obj-90",
                    2
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
                    "obj-90",
                    3
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
                    "obj-90",
                    4
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
                    "obj-90",
                    5
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
                    "obj-90",
                    6
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
                    "obj-90",
                    7
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
                    "obj-90",
                    8
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
                    "obj-90",
                    9
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
                    "obj-90",
                    10
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
                    "obj-90",
                    11
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
                    "obj-83",
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
                    3
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
                    "obj-91",
                    2
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
                    "obj-91",
                    1
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
                    "obj-91",
                    0
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
                    "obj-16",
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
                    "obj-94",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-94",
                    1
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
                    "obj-94",
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
                    "obj-114",
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
                    "obj-115",
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
                    "obj-116",
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
                    "obj-117",
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
                    "obj-118",
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
                    "obj-119",
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
                    "obj-109",
                    1
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
                    "obj-109",
                    2
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
                    "obj-109",
                    3
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
                    "obj-109",
                    4
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
                    "obj-109",
                    5
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
                    "obj-109",
                    6
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
                    "obj-109",
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
                    "obj-29",
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
                    3
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
                    "obj-98",
                    2
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
                    "obj-98",
                    1
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
                    2
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
                    "obj-99",
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
                    "obj-99",
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
                    "obj-18",
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
                    "obj-107",
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
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-101",
                    3
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
                    "obj-115",
                    2
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-101",
                    2
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
                    "obj-101",
                    1
                  ],
                  "destination": [
                    "obj-104",
                    1
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
                    "obj-105",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-105",
                    1
                  ],
                  "destination": [
                    "obj-117",
                    2
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
                    "obj-108",
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
                    "obj-104",
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
                    "obj-110",
                    1
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
                    "obj-112",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-112",
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
                    "obj-112",
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
                    "obj-113",
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
                    "obj-101",
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
          "numinlets": 1,
          "numoutlets": 12,
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
            ""
          ],
          "text": "p lights",
          "varname": "lights",
          "patching_rect": [
            160.0,
            460.0,
            64.0,
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
              1700.0,
              700.0
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
                  "varname": "in_mask",
                  "index": 1,
                  "comment": "24 ints, Main C-B then Accent C-B",
                  "patching_rect": [
                    24.0,
                    28.0,
                    220.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-2",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "zl.reg",
                  "varname": "mask_reg",
                  "patching_rect": [
                    24.0,
                    70.0,
                    58.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-3",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "loadmess 0 0 1 0 1 1 0 1 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0",
                  "varname": "load_mask",
                  "patching_rect": [
                    260.0,
                    28.0,
                    408.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-4",
                  "maxclass": "newobj",
                  "numinlets": 24,
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
                  "text": "unpack i i i i i i i i i i i i i i i i i i i i i i i i",
                  "varname": "unpack_mask",
                  "patching_rect": [
                    24.0,
                    110.0,
                    394.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_0",
                  "patching_rect": [
                    24.0,
                    180.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_0",
                  "patching_rect": [
                    24.0,
                    208.0,
                    79.0,
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
                  "varname": "pad_out_0",
                  "index": 1,
                  "patching_rect": [
                    1540.0,
                    40.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_0",
                  "patching_rect": [
                    100.0,
                    208.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_0",
                  "patching_rect": [
                    100.0,
                    228.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-10",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_0",
                  "patching_rect": [
                    100.0,
                    248.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_0",
                  "patching_rect": [
                    100.0,
                    268.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_0",
                  "patching_rect": [
                    174.0,
                    248.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-13",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_0",
                  "patching_rect": [
                    174.0,
                    228.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_0",
                  "patching_rect": [
                    100.0,
                    298.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-15",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_0",
                  "patching_rect": [
                    100.0,
                    318.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-16",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_0",
                  "patching_rect": [
                    100.0,
                    338.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-17",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_0",
                  "patching_rect": [
                    100.0,
                    358.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_0",
                  "patching_rect": [
                    174.0,
                    338.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-19",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_0",
                  "patching_rect": [
                    174.0,
                    318.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_0",
                  "patching_rect": [
                    100.0,
                    388.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-21",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_0",
                  "patching_rect": [
                    100.0,
                    408.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-22",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_0",
                  "patching_rect": [
                    100.0,
                    428.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-23",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_0",
                  "patching_rect": [
                    100.0,
                    448.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_0",
                  "patching_rect": [
                    174.0,
                    428.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-25",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_2_0",
                  "patching_rect": [
                    174.0,
                    408.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-26",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_1",
                  "patching_rect": [
                    264.0,
                    180.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-27",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_1",
                  "patching_rect": [
                    264.0,
                    208.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_1",
                  "index": 2,
                  "patching_rect": [
                    1540.0,
                    64.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_1",
                  "patching_rect": [
                    340.0,
                    208.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-30",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_1",
                  "patching_rect": [
                    340.0,
                    228.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-31",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_1",
                  "patching_rect": [
                    340.0,
                    248.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-32",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_1",
                  "patching_rect": [
                    340.0,
                    268.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-33",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_1",
                  "patching_rect": [
                    414.0,
                    248.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-34",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_1",
                  "patching_rect": [
                    414.0,
                    228.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_1",
                  "patching_rect": [
                    340.0,
                    298.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-36",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_1",
                  "patching_rect": [
                    340.0,
                    318.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-37",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_1",
                  "patching_rect": [
                    340.0,
                    338.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-38",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_1",
                  "patching_rect": [
                    340.0,
                    358.0,
                    207.39999999999998,
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
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_1",
                  "patching_rect": [
                    414.0,
                    338.0,
                    154.6,
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
                  "text": "set 1",
                  "varname": "val_1_1",
                  "patching_rect": [
                    414.0,
                    318.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-41",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_1",
                  "patching_rect": [
                    340.0,
                    388.0,
                    93.0,
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
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_1",
                  "patching_rect": [
                    340.0,
                    408.0,
                    233.79999999999998,
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
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_1",
                  "patching_rect": [
                    340.0,
                    428.0,
                    194.2,
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
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_1",
                  "patching_rect": [
                    340.0,
                    448.0,
                    207.39999999999998,
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
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_1",
                  "patching_rect": [
                    414.0,
                    428.0,
                    154.6,
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
                  "text": "set 1",
                  "varname": "val_2_1",
                  "patching_rect": [
                    414.0,
                    408.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-47",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_2",
                  "patching_rect": [
                    504.0,
                    180.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_2",
                  "patching_rect": [
                    504.0,
                    208.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-49",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_2",
                  "index": 3,
                  "patching_rect": [
                    1540.0,
                    88.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_2",
                  "patching_rect": [
                    580.0,
                    208.0,
                    93.0,
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
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_2",
                  "patching_rect": [
                    580.0,
                    228.0,
                    299.8,
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
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_2",
                  "patching_rect": [
                    580.0,
                    248.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-53",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_2",
                  "patching_rect": [
                    580.0,
                    268.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-54",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_2",
                  "patching_rect": [
                    654.0,
                    248.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-55",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_2",
                  "patching_rect": [
                    654.0,
                    228.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-56",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_2",
                  "patching_rect": [
                    580.0,
                    298.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-57",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_2",
                  "patching_rect": [
                    580.0,
                    318.0,
                    273.4,
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
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_2",
                  "patching_rect": [
                    580.0,
                    338.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-59",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_2",
                  "patching_rect": [
                    580.0,
                    358.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-60",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_2",
                  "patching_rect": [
                    654.0,
                    338.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-61",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_2",
                  "patching_rect": [
                    654.0,
                    318.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-62",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_2",
                  "patching_rect": [
                    580.0,
                    388.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-63",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_2",
                  "patching_rect": [
                    580.0,
                    408.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-64",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_2",
                  "patching_rect": [
                    580.0,
                    428.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-65",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_2",
                  "patching_rect": [
                    580.0,
                    448.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-66",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_2",
                  "patching_rect": [
                    654.0,
                    428.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-67",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_2_2",
                  "patching_rect": [
                    654.0,
                    408.0,
                    49.0,
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
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_3",
                  "patching_rect": [
                    744.0,
                    180.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-69",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_3",
                  "patching_rect": [
                    744.0,
                    208.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-70",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_3",
                  "index": 4,
                  "patching_rect": [
                    1540.0,
                    112.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-71",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_3",
                  "patching_rect": [
                    820.0,
                    208.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-72",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_3",
                  "patching_rect": [
                    820.0,
                    228.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-73",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_3",
                  "patching_rect": [
                    820.0,
                    248.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-74",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_3",
                  "patching_rect": [
                    820.0,
                    268.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-75",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_3",
                  "patching_rect": [
                    894.0,
                    248.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-76",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_3",
                  "patching_rect": [
                    894.0,
                    228.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-77",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_3",
                  "patching_rect": [
                    820.0,
                    298.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-78",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_3",
                  "patching_rect": [
                    820.0,
                    318.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-79",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_3",
                  "patching_rect": [
                    820.0,
                    338.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_3",
                  "patching_rect": [
                    820.0,
                    358.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-81",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_3",
                  "patching_rect": [
                    894.0,
                    338.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-82",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_3",
                  "patching_rect": [
                    894.0,
                    318.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-83",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_3",
                  "patching_rect": [
                    820.0,
                    388.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-84",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_3",
                  "patching_rect": [
                    820.0,
                    408.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-85",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_3",
                  "patching_rect": [
                    820.0,
                    428.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-86",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_3",
                  "patching_rect": [
                    820.0,
                    448.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-87",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_3",
                  "patching_rect": [
                    894.0,
                    428.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-88",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_2_3",
                  "patching_rect": [
                    894.0,
                    408.0,
                    49.0,
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
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_4",
                  "patching_rect": [
                    984.0,
                    180.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-90",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_4",
                  "patching_rect": [
                    984.0,
                    208.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-91",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_4",
                  "index": 5,
                  "patching_rect": [
                    1540.0,
                    136.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-92",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_4",
                  "patching_rect": [
                    1060.0,
                    208.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-93",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_4",
                  "patching_rect": [
                    1060.0,
                    228.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-94",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_4",
                  "patching_rect": [
                    1060.0,
                    248.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-95",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_4",
                  "patching_rect": [
                    1060.0,
                    268.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-96",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_4",
                  "patching_rect": [
                    1134.0,
                    248.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-97",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_4",
                  "patching_rect": [
                    1134.0,
                    228.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-98",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_4",
                  "patching_rect": [
                    1060.0,
                    298.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-99",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_4",
                  "patching_rect": [
                    1060.0,
                    318.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-100",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_4",
                  "patching_rect": [
                    1060.0,
                    338.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-101",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_4",
                  "patching_rect": [
                    1060.0,
                    358.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-102",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_4",
                  "patching_rect": [
                    1134.0,
                    338.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-103",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_4",
                  "patching_rect": [
                    1134.0,
                    318.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-104",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_4",
                  "patching_rect": [
                    1060.0,
                    388.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-105",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_4",
                  "patching_rect": [
                    1060.0,
                    408.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-106",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_4",
                  "patching_rect": [
                    1060.0,
                    428.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-107",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_4",
                  "patching_rect": [
                    1060.0,
                    448.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-108",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_4",
                  "patching_rect": [
                    1134.0,
                    428.0,
                    154.6,
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
                  "text": "set 1",
                  "varname": "val_2_4",
                  "patching_rect": [
                    1134.0,
                    408.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-110",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_5",
                  "patching_rect": [
                    1224.0,
                    180.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-111",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_5",
                  "patching_rect": [
                    1224.0,
                    208.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-112",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_5",
                  "index": 6,
                  "patching_rect": [
                    1540.0,
                    160.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-113",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_5",
                  "patching_rect": [
                    1300.0,
                    208.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-114",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_5",
                  "patching_rect": [
                    1300.0,
                    228.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-115",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_5",
                  "patching_rect": [
                    1300.0,
                    248.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-116",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_5",
                  "patching_rect": [
                    1300.0,
                    268.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-117",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_5",
                  "patching_rect": [
                    1374.0,
                    248.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-118",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_5",
                  "patching_rect": [
                    1374.0,
                    228.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-119",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_5",
                  "patching_rect": [
                    1300.0,
                    298.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-120",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_5",
                  "patching_rect": [
                    1300.0,
                    318.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-121",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_5",
                  "patching_rect": [
                    1300.0,
                    338.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-122",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_5",
                  "patching_rect": [
                    1300.0,
                    358.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-123",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_5",
                  "patching_rect": [
                    1374.0,
                    338.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-124",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_5",
                  "patching_rect": [
                    1374.0,
                    318.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-125",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_5",
                  "patching_rect": [
                    1300.0,
                    388.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-126",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_5",
                  "patching_rect": [
                    1300.0,
                    408.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-127",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_5",
                  "patching_rect": [
                    1300.0,
                    428.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-128",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_5",
                  "patching_rect": [
                    1300.0,
                    448.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-129",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_5",
                  "patching_rect": [
                    1374.0,
                    428.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-130",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_2_5",
                  "patching_rect": [
                    1374.0,
                    408.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-131",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_6",
                  "patching_rect": [
                    24.0,
                    500.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-132",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_6",
                  "patching_rect": [
                    24.0,
                    528.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-133",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_6",
                  "index": 7,
                  "patching_rect": [
                    1540.0,
                    184.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-134",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_6",
                  "patching_rect": [
                    100.0,
                    528.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-135",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_6",
                  "patching_rect": [
                    100.0,
                    548.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-136",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_6",
                  "patching_rect": [
                    100.0,
                    568.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-137",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_6",
                  "patching_rect": [
                    100.0,
                    588.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-138",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_6",
                  "patching_rect": [
                    174.0,
                    568.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-139",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_6",
                  "patching_rect": [
                    174.0,
                    548.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-140",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_6",
                  "patching_rect": [
                    100.0,
                    618.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-141",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_6",
                  "patching_rect": [
                    100.0,
                    638.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-142",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_6",
                  "patching_rect": [
                    100.0,
                    658.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-143",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_6",
                  "patching_rect": [
                    100.0,
                    678.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-144",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_6",
                  "patching_rect": [
                    174.0,
                    658.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-145",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_6",
                  "patching_rect": [
                    174.0,
                    638.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-146",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_6",
                  "patching_rect": [
                    100.0,
                    708.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-147",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_6",
                  "patching_rect": [
                    100.0,
                    728.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-148",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_6",
                  "patching_rect": [
                    100.0,
                    748.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-149",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_6",
                  "patching_rect": [
                    100.0,
                    768.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-150",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_6",
                  "patching_rect": [
                    174.0,
                    748.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-151",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_2_6",
                  "patching_rect": [
                    174.0,
                    728.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-152",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_7",
                  "patching_rect": [
                    264.0,
                    500.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-153",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_7",
                  "patching_rect": [
                    264.0,
                    528.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-154",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_7",
                  "index": 8,
                  "patching_rect": [
                    1540.0,
                    208.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-155",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_7",
                  "patching_rect": [
                    340.0,
                    528.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-156",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_7",
                  "patching_rect": [
                    340.0,
                    548.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-157",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_7",
                  "patching_rect": [
                    340.0,
                    568.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-158",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_7",
                  "patching_rect": [
                    340.0,
                    588.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-159",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_7",
                  "patching_rect": [
                    414.0,
                    568.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-160",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_7",
                  "patching_rect": [
                    414.0,
                    548.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-161",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_7",
                  "patching_rect": [
                    340.0,
                    618.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-162",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_7",
                  "patching_rect": [
                    340.0,
                    638.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-163",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_7",
                  "patching_rect": [
                    340.0,
                    658.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-164",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_7",
                  "patching_rect": [
                    340.0,
                    678.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-165",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_7",
                  "patching_rect": [
                    414.0,
                    658.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-166",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_7",
                  "patching_rect": [
                    414.0,
                    638.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-167",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_7",
                  "patching_rect": [
                    340.0,
                    708.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-168",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_7",
                  "patching_rect": [
                    340.0,
                    728.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-169",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_7",
                  "patching_rect": [
                    340.0,
                    748.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-170",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_7",
                  "patching_rect": [
                    340.0,
                    768.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-171",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_7",
                  "patching_rect": [
                    414.0,
                    748.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-172",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_2_7",
                  "patching_rect": [
                    414.0,
                    728.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-173",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_8",
                  "patching_rect": [
                    504.0,
                    500.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-174",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_8",
                  "patching_rect": [
                    504.0,
                    528.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-175",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_8",
                  "index": 9,
                  "patching_rect": [
                    1540.0,
                    232.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-176",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_8",
                  "patching_rect": [
                    580.0,
                    528.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-177",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_8",
                  "patching_rect": [
                    580.0,
                    548.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-178",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_8",
                  "patching_rect": [
                    580.0,
                    568.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-179",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_8",
                  "patching_rect": [
                    580.0,
                    588.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-180",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_8",
                  "patching_rect": [
                    654.0,
                    568.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-181",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_8",
                  "patching_rect": [
                    654.0,
                    548.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-182",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_8",
                  "patching_rect": [
                    580.0,
                    618.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-183",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_8",
                  "patching_rect": [
                    580.0,
                    638.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-184",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_8",
                  "patching_rect": [
                    580.0,
                    658.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-185",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_8",
                  "patching_rect": [
                    580.0,
                    678.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-186",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_8",
                  "patching_rect": [
                    654.0,
                    658.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-187",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_8",
                  "patching_rect": [
                    654.0,
                    638.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-188",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_8",
                  "patching_rect": [
                    580.0,
                    708.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-189",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_8",
                  "patching_rect": [
                    580.0,
                    728.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-190",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_8",
                  "patching_rect": [
                    580.0,
                    748.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-191",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_8",
                  "patching_rect": [
                    580.0,
                    768.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-192",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_8",
                  "patching_rect": [
                    654.0,
                    748.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-193",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_2_8",
                  "patching_rect": [
                    654.0,
                    728.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-194",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_9",
                  "patching_rect": [
                    744.0,
                    500.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-195",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_9",
                  "patching_rect": [
                    744.0,
                    528.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-196",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_9",
                  "index": 10,
                  "patching_rect": [
                    1540.0,
                    256.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-197",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_9",
                  "patching_rect": [
                    820.0,
                    528.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-198",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_9",
                  "patching_rect": [
                    820.0,
                    548.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-199",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_9",
                  "patching_rect": [
                    820.0,
                    568.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-200",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_9",
                  "patching_rect": [
                    820.0,
                    588.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-201",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_9",
                  "patching_rect": [
                    894.0,
                    568.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-202",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_9",
                  "patching_rect": [
                    894.0,
                    548.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-203",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_9",
                  "patching_rect": [
                    820.0,
                    618.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-204",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_9",
                  "patching_rect": [
                    820.0,
                    638.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-205",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_9",
                  "patching_rect": [
                    820.0,
                    658.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-206",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_9",
                  "patching_rect": [
                    820.0,
                    678.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-207",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_9",
                  "patching_rect": [
                    894.0,
                    658.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-208",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_9",
                  "patching_rect": [
                    894.0,
                    638.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-209",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_9",
                  "patching_rect": [
                    820.0,
                    708.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-210",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_9",
                  "patching_rect": [
                    820.0,
                    728.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-211",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_9",
                  "patching_rect": [
                    820.0,
                    748.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-212",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_9",
                  "patching_rect": [
                    820.0,
                    768.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-213",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_9",
                  "patching_rect": [
                    894.0,
                    748.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-214",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_2_9",
                  "patching_rect": [
                    894.0,
                    728.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-215",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_10",
                  "patching_rect": [
                    984.0,
                    500.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-216",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_10",
                  "patching_rect": [
                    984.0,
                    528.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-217",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_10",
                  "index": 11,
                  "patching_rect": [
                    1540.0,
                    280.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-218",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_10",
                  "patching_rect": [
                    1060.0,
                    528.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-219",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_10",
                  "patching_rect": [
                    1060.0,
                    548.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-220",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_10",
                  "patching_rect": [
                    1060.0,
                    568.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-221",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_10",
                  "patching_rect": [
                    1060.0,
                    588.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-222",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_10",
                  "patching_rect": [
                    1134.0,
                    568.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-223",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_10",
                  "patching_rect": [
                    1134.0,
                    548.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-224",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_10",
                  "patching_rect": [
                    1060.0,
                    618.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-225",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_10",
                  "patching_rect": [
                    1060.0,
                    638.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-226",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_10",
                  "patching_rect": [
                    1060.0,
                    658.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-227",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_10",
                  "patching_rect": [
                    1060.0,
                    678.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-228",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_10",
                  "patching_rect": [
                    1134.0,
                    658.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-229",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_10",
                  "patching_rect": [
                    1134.0,
                    638.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-230",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_10",
                  "patching_rect": [
                    1060.0,
                    708.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-231",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_10",
                  "patching_rect": [
                    1060.0,
                    728.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-232",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_10",
                  "patching_rect": [
                    1060.0,
                    748.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-233",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_10",
                  "patching_rect": [
                    1060.0,
                    768.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-234",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_10",
                  "patching_rect": [
                    1134.0,
                    748.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-235",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_2_10",
                  "patching_rect": [
                    1134.0,
                    728.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-236",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i2 * 2 + $i1",
                  "varname": "state_11",
                  "patching_rect": [
                    1224.0,
                    500.0,
                    142.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-237",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 4,
                  "outlettype": [
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "sel 0 1 2",
                  "varname": "sel_11",
                  "patching_rect": [
                    1224.0,
                    528.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-238",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "pad_out_11",
                  "index": 12,
                  "patching_rect": [
                    1540.0,
                    304.0,
                    70.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-239",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_0_11",
                  "patching_rect": [
                    1300.0,
                    528.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-240",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bg_0_11",
                  "patching_rect": [
                    1300.0,
                    548.0,
                    299.8,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-241",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgcolor 0.156863 0.156863 0.156863 1.",
                  "varname": "bgi_0_11",
                  "patching_rect": [
                    1300.0,
                    568.0,
                    260.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-242",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fg_0_11",
                  "patching_rect": [
                    1300.0,
                    588.0,
                    313.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-243",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textoffcolor 0.807843 0.807843 0.807843 1.",
                  "varname": "fgi_0_11",
                  "patching_rect": [
                    1374.0,
                    568.0,
                    293.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-244",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 0",
                  "varname": "val_0_11",
                  "patching_rect": [
                    1374.0,
                    548.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-245",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_1_11",
                  "patching_rect": [
                    1300.0,
                    618.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-246",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bg_1_11",
                  "patching_rect": [
                    1300.0,
                    638.0,
                    273.4,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-247",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 1. 0.709804 0.196078 1.",
                  "varname": "bgi_1_11",
                  "patching_rect": [
                    1300.0,
                    658.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-248",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_1_11",
                  "patching_rect": [
                    1300.0,
                    678.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-249",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_1_11",
                  "patching_rect": [
                    1374.0,
                    658.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-250",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_1_11",
                  "patching_rect": [
                    1374.0,
                    638.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-251",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "t b b b b b",
                  "varname": "t_2_11",
                  "patching_rect": [
                    1300.0,
                    708.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-252",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activebgoncolor 0. 0.933333 1. 1.",
                  "varname": "bg_2_11",
                  "patching_rect": [
                    1300.0,
                    728.0,
                    233.79999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-253",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "bgoncolor 0. 0.933333 1. 1.",
                  "varname": "bgi_2_11",
                  "patching_rect": [
                    1300.0,
                    748.0,
                    194.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-254",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "activetextoncolor 0. 0. 0. 1.",
                  "varname": "fg_2_11",
                  "patching_rect": [
                    1300.0,
                    768.0,
                    207.39999999999998,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-255",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "textcolor 0. 0. 0. 1.",
                  "varname": "fgi_2_11",
                  "patching_rect": [
                    1374.0,
                    748.0,
                    154.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-256",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "set 1",
                  "varname": "val_2_11",
                  "patching_rect": [
                    1374.0,
                    728.0,
                    49.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-257",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    "bang"
                  ],
                  "text": "live.colors",
                  "varname": "colors",
                  "patching_rect": [
                    24.0,
                    860.0,
                    93.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-258",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "loadbang",
                  "varname": "load_colors",
                  "patching_rect": [
                    24.0,
                    820.0,
                    72.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-259",
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
                  "varname": "t_query",
                  "patching_rect": [
                    24.0,
                    900.0,
                    79.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-260",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "t b",
                  "varname": "t_repaint",
                  "patching_rect": [
                    700.0,
                    900.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-261",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 5,
                  "outlettype": [
                    "",
                    "",
                    "",
                    "",
                    ""
                  ],
                  "text": "route live_lcd_bg live_control_selection live_control_selection_alt live_lcd_title",
                  "varname": "route_colors",
                  "patching_rect": [
                    180.0,
                    860.0,
                    590.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-262",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "live_lcd_bg",
                  "varname": "query_0",
                  "patching_rect": [
                    180.0,
                    820.0,
                    88.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-263",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "live_control_selection",
                  "varname": "query_1",
                  "patching_rect": [
                    350.0,
                    820.0,
                    161.2,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-264",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "live_control_selection_alt",
                  "varname": "query_2",
                  "patching_rect": [
                    520.0,
                    820.0,
                    187.6,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-265",
                  "maxclass": "message",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "live_lcd_title",
                  "varname": "query_3",
                  "patching_rect": [
                    690.0,
                    820.0,
                    108.39999999999999,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-266",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set activebgcolor",
                  "varname": "set_bg_off",
                  "patching_rect": [
                    180.0,
                    940.0,
                    191.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-267",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set bgcolor",
                  "varname": "set_bgi_off",
                  "patching_rect": [
                    180.0,
                    966.0,
                    149.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-268",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set activebgoncolor",
                  "varname": "set_bg_yellow",
                  "patching_rect": [
                    180.0,
                    992.0,
                    205.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-269",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set bgoncolor",
                  "varname": "set_bgi_yellow",
                  "patching_rect": [
                    180.0,
                    1018.0,
                    163.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-270",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set activebgoncolor",
                  "varname": "set_bg_cyan",
                  "patching_rect": [
                    180.0,
                    1044.0,
                    205.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-271",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set bgoncolor",
                  "varname": "set_bgi_cyan",
                  "patching_rect": [
                    180.0,
                    1070.0,
                    163.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-272",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set activetextcolor",
                  "varname": "set_fg_off",
                  "patching_rect": [
                    180.0,
                    1096.0,
                    205.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-273",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "prepend set textoffcolor",
                  "varname": "set_fgi_off",
                  "patching_rect": [
                    180.0,
                    1122.0,
                    184.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-274",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "text": "0 dark, 1 yellow (Control On, the device on/off button), 2 cyan for the root. On-text is black. live.colors updates the RGBA messages when the theme changes.",
                  "patching_rect": [
                    24.0,
                    1180.0,
                    640.0,
                    36.0
                  ]
                }
              }
            ],
            "lines": [
              {
                "patchline": {
                  "source": [
                    "obj-3",
                    0
                  ],
                  "destination": [
                    "obj-2",
                    1
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
                    1
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
                    "obj-4",
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
                    "obj-5",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    12
                  ],
                  "destination": [
                    "obj-5",
                    1
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
                    "obj-6",
                    0
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
                    "obj-8",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-8",
                    4
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
                    "obj-8",
                    3
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
                    "obj-8",
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
                    "obj-8",
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
                    "obj-8",
                    0
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
                    "obj-9",
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
                    "obj-10",
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
                    "obj-11",
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
                    "obj-12",
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
                    "obj-13",
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
                    "obj-6",
                    1
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
                    "obj-14",
                    4
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
                    "obj-14",
                    3
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
                    "obj-14",
                    2
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
                    "obj-14",
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
                    "obj-14",
                    0
                  ],
                  "destination": [
                    "obj-19",
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
                    "obj-7",
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
                    "obj-7",
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
                    "obj-18",
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
                    "obj-19",
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
                    "obj-6",
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
                    "obj-20",
                    4
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
                    "obj-20",
                    3
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
                    "obj-20",
                    2
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
                    "obj-20",
                    1
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
                    "obj-20",
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
                    "obj-21",
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
                    "obj-22",
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
                    "obj-23",
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
                    "obj-24",
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
                    "obj-25",
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
                    "obj-4",
                    1
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
                    "obj-4",
                    13
                  ],
                  "destination": [
                    "obj-26",
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
                    "obj-27",
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
                    "obj-29",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-29",
                    4
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
                    "obj-29",
                    3
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
                    "obj-29",
                    2
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
                    "obj-29",
                    1
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
                    "obj-29",
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
                    "obj-30",
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
                    "obj-31",
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
                    "obj-32",
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
                    "obj-33",
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
                    "obj-34",
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
                    "obj-27",
                    1
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
                    4
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
                    "obj-35",
                    3
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
                    "obj-35",
                    2
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
                    "obj-35",
                    1
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
                    "obj-35",
                    0
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
                    "obj-36",
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
                    "obj-37",
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
                    "obj-38",
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
                    "obj-39",
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
                    "obj-40",
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
                    "obj-27",
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
                    "obj-41",
                    4
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
                    "obj-41",
                    3
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
                    "obj-41",
                    2
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
                    "obj-41",
                    1
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
                    "obj-41",
                    0
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
                    "obj-42",
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
                    "obj-43",
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
                    "obj-44",
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
                    "obj-45",
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
                    "obj-46",
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
                    "obj-4",
                    2
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
                    "obj-4",
                    14
                  ],
                  "destination": [
                    "obj-47",
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
                    "obj-48",
                    0
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
                    "obj-50",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-50",
                    4
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
                    "obj-50",
                    3
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
                    "obj-50",
                    2
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
                    "obj-50",
                    1
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
                    "obj-50",
                    0
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
                    "obj-51",
                    0
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
                    "obj-52",
                    0
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
                    "obj-53",
                    0
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
                    "obj-54",
                    0
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
                    "obj-55",
                    0
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
                    "obj-48",
                    1
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
                    4
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
                    "obj-56",
                    3
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
                    "obj-56",
                    2
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
                    "obj-56",
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
                    "obj-56",
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
                    "obj-57",
                    0
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
                    "obj-58",
                    0
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
                    "obj-59",
                    0
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
                    "obj-60",
                    0
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
                    "obj-61",
                    0
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
                    "obj-48",
                    2
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
                    "obj-62",
                    4
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
                    "obj-62",
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
                    "obj-62",
                    2
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
                    "obj-62",
                    1
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
                    "obj-62",
                    0
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
                    "obj-63",
                    0
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
                    "obj-64",
                    0
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
                    "obj-65",
                    0
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
                    "obj-66",
                    0
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
                    "obj-67",
                    0
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
                    "obj-4",
                    3
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
                    "obj-4",
                    15
                  ],
                  "destination": [
                    "obj-68",
                    1
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
                    "obj-69",
                    0
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
                    "obj-71",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-71",
                    4
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
                    "obj-71",
                    3
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
                    "obj-71",
                    2
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
                    "obj-71",
                    1
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
                    "obj-71",
                    0
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
                    "obj-72",
                    0
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
                    "obj-73",
                    0
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
                    "obj-74",
                    0
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
                    "obj-75",
                    0
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
                    "obj-76",
                    0
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
                    "obj-69",
                    1
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
                    "obj-77",
                    4
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
                    "obj-77",
                    3
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
                    "obj-77",
                    2
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
                    "obj-77",
                    1
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
                    "obj-77",
                    0
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
                    "obj-78",
                    0
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
                    "obj-79",
                    0
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
                    "obj-80",
                    0
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
                    "obj-81",
                    0
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
                    "obj-82",
                    0
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
                    "obj-69",
                    2
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
                    "obj-83",
                    4
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
                    "obj-83",
                    3
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
                    "obj-83",
                    2
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
                    "obj-83",
                    1
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
                    "obj-83",
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
                    "obj-84",
                    0
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
                    0
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
                    0
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
                    "obj-87",
                    0
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
                    "obj-88",
                    0
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
                    "obj-4",
                    4
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
                    "obj-4",
                    16
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
                    "obj-92",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-92",
                    4
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
                    "obj-92",
                    3
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
                    "obj-92",
                    2
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
                    "obj-92",
                    1
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
                    "obj-92",
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
                    "obj-93",
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
                    "obj-94",
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
                    "obj-95",
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
                    "obj-96",
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
                    "obj-97",
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
                    "obj-90",
                    1
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
                    4
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
                    "obj-98",
                    3
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
                    "obj-98",
                    2
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
                    "obj-98",
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
                    "obj-98",
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
                    "obj-99",
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
                    "obj-100",
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
                    "obj-101",
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
                    "obj-102",
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
                    "obj-103",
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
                    "obj-90",
                    2
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
                    4
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
                    "obj-104",
                    3
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
                    "obj-104",
                    2
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
                    "obj-104",
                    1
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
                    "obj-104",
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
                    "obj-105",
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
                    "obj-106",
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
                    "obj-107",
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
                    "obj-108",
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
                    "obj-109",
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
                    "obj-4",
                    5
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
                    "obj-4",
                    17
                  ],
                  "destination": [
                    "obj-110",
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
                    "obj-113",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-113",
                    4
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
                    "obj-113",
                    3
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
                    "obj-113",
                    2
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
                    "obj-113",
                    1
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
                    "obj-113",
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
                    "obj-114",
                    0
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
                    "obj-115",
                    0
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
                    "obj-116",
                    0
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
                    "obj-117",
                    0
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
                    "obj-118",
                    0
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
                    "obj-111",
                    1
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
                    4
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
                    "obj-119",
                    3
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
                    "obj-119",
                    2
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
                    "obj-119",
                    1
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
                    "obj-119",
                    0
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
                    "obj-120",
                    0
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
                    "obj-121",
                    0
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
                    "obj-122",
                    0
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
                    "obj-123",
                    0
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
                    "obj-124",
                    0
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
                    "obj-111",
                    2
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
                    "obj-125",
                    4
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
                    "obj-125",
                    3
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
                    "obj-125",
                    2
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
                    "obj-125",
                    1
                  ],
                  "destination": [
                    "obj-129",
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
                    "obj-130",
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
                    "obj-112",
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
                    "obj-112",
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
                    "obj-112",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-129",
                    0
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
                    "obj-130",
                    0
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
                    "obj-4",
                    6
                  ],
                  "destination": [
                    "obj-131",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    18
                  ],
                  "destination": [
                    "obj-131",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-131",
                    0
                  ],
                  "destination": [
                    "obj-132",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-132",
                    0
                  ],
                  "destination": [
                    "obj-134",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-134",
                    4
                  ],
                  "destination": [
                    "obj-135",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-134",
                    3
                  ],
                  "destination": [
                    "obj-136",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-134",
                    2
                  ],
                  "destination": [
                    "obj-137",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-134",
                    1
                  ],
                  "destination": [
                    "obj-138",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-134",
                    0
                  ],
                  "destination": [
                    "obj-139",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-135",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-136",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-137",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-138",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-139",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-132",
                    1
                  ],
                  "destination": [
                    "obj-140",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-140",
                    4
                  ],
                  "destination": [
                    "obj-141",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-140",
                    3
                  ],
                  "destination": [
                    "obj-142",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-140",
                    2
                  ],
                  "destination": [
                    "obj-143",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-140",
                    1
                  ],
                  "destination": [
                    "obj-144",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-140",
                    0
                  ],
                  "destination": [
                    "obj-145",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-141",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-142",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-143",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-144",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-145",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-132",
                    2
                  ],
                  "destination": [
                    "obj-146",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-146",
                    4
                  ],
                  "destination": [
                    "obj-147",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-146",
                    3
                  ],
                  "destination": [
                    "obj-148",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-146",
                    2
                  ],
                  "destination": [
                    "obj-149",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-146",
                    1
                  ],
                  "destination": [
                    "obj-150",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-146",
                    0
                  ],
                  "destination": [
                    "obj-151",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-147",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-148",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-149",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-150",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-151",
                    0
                  ],
                  "destination": [
                    "obj-133",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    7
                  ],
                  "destination": [
                    "obj-152",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    19
                  ],
                  "destination": [
                    "obj-152",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-152",
                    0
                  ],
                  "destination": [
                    "obj-153",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-153",
                    0
                  ],
                  "destination": [
                    "obj-155",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-155",
                    4
                  ],
                  "destination": [
                    "obj-156",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-155",
                    3
                  ],
                  "destination": [
                    "obj-157",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-155",
                    2
                  ],
                  "destination": [
                    "obj-158",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-155",
                    1
                  ],
                  "destination": [
                    "obj-159",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-155",
                    0
                  ],
                  "destination": [
                    "obj-160",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-156",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-157",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-158",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-159",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-160",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-153",
                    1
                  ],
                  "destination": [
                    "obj-161",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-161",
                    4
                  ],
                  "destination": [
                    "obj-162",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-161",
                    3
                  ],
                  "destination": [
                    "obj-163",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-161",
                    2
                  ],
                  "destination": [
                    "obj-164",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-161",
                    1
                  ],
                  "destination": [
                    "obj-165",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-161",
                    0
                  ],
                  "destination": [
                    "obj-166",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-162",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-163",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-164",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-165",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-166",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-153",
                    2
                  ],
                  "destination": [
                    "obj-167",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-167",
                    4
                  ],
                  "destination": [
                    "obj-168",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-167",
                    3
                  ],
                  "destination": [
                    "obj-169",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-167",
                    2
                  ],
                  "destination": [
                    "obj-170",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-167",
                    1
                  ],
                  "destination": [
                    "obj-171",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-167",
                    0
                  ],
                  "destination": [
                    "obj-172",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-168",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-169",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-170",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-171",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-172",
                    0
                  ],
                  "destination": [
                    "obj-154",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    8
                  ],
                  "destination": [
                    "obj-173",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    20
                  ],
                  "destination": [
                    "obj-173",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-173",
                    0
                  ],
                  "destination": [
                    "obj-174",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-174",
                    0
                  ],
                  "destination": [
                    "obj-176",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-176",
                    4
                  ],
                  "destination": [
                    "obj-177",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-176",
                    3
                  ],
                  "destination": [
                    "obj-178",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-176",
                    2
                  ],
                  "destination": [
                    "obj-179",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-176",
                    1
                  ],
                  "destination": [
                    "obj-180",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-176",
                    0
                  ],
                  "destination": [
                    "obj-181",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-177",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-178",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-179",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-180",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-181",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-174",
                    1
                  ],
                  "destination": [
                    "obj-182",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-182",
                    4
                  ],
                  "destination": [
                    "obj-183",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-182",
                    3
                  ],
                  "destination": [
                    "obj-184",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-182",
                    2
                  ],
                  "destination": [
                    "obj-185",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-182",
                    1
                  ],
                  "destination": [
                    "obj-186",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-182",
                    0
                  ],
                  "destination": [
                    "obj-187",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-183",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-184",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-185",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-186",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-187",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-174",
                    2
                  ],
                  "destination": [
                    "obj-188",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-188",
                    4
                  ],
                  "destination": [
                    "obj-189",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-188",
                    3
                  ],
                  "destination": [
                    "obj-190",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-188",
                    2
                  ],
                  "destination": [
                    "obj-191",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-188",
                    1
                  ],
                  "destination": [
                    "obj-192",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-188",
                    0
                  ],
                  "destination": [
                    "obj-193",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-189",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-190",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-191",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-192",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-193",
                    0
                  ],
                  "destination": [
                    "obj-175",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    9
                  ],
                  "destination": [
                    "obj-194",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    21
                  ],
                  "destination": [
                    "obj-194",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-194",
                    0
                  ],
                  "destination": [
                    "obj-195",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-195",
                    0
                  ],
                  "destination": [
                    "obj-197",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-197",
                    4
                  ],
                  "destination": [
                    "obj-198",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-197",
                    3
                  ],
                  "destination": [
                    "obj-199",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-197",
                    2
                  ],
                  "destination": [
                    "obj-200",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-197",
                    1
                  ],
                  "destination": [
                    "obj-201",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-197",
                    0
                  ],
                  "destination": [
                    "obj-202",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-198",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-199",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-200",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-201",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-202",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-195",
                    1
                  ],
                  "destination": [
                    "obj-203",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-203",
                    4
                  ],
                  "destination": [
                    "obj-204",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-203",
                    3
                  ],
                  "destination": [
                    "obj-205",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-203",
                    2
                  ],
                  "destination": [
                    "obj-206",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-203",
                    1
                  ],
                  "destination": [
                    "obj-207",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-203",
                    0
                  ],
                  "destination": [
                    "obj-208",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-204",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-205",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-206",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-207",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-208",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-195",
                    2
                  ],
                  "destination": [
                    "obj-209",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-209",
                    4
                  ],
                  "destination": [
                    "obj-210",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-209",
                    3
                  ],
                  "destination": [
                    "obj-211",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-209",
                    2
                  ],
                  "destination": [
                    "obj-212",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-209",
                    1
                  ],
                  "destination": [
                    "obj-213",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-209",
                    0
                  ],
                  "destination": [
                    "obj-214",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-210",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-211",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-212",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-213",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-214",
                    0
                  ],
                  "destination": [
                    "obj-196",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    10
                  ],
                  "destination": [
                    "obj-215",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    22
                  ],
                  "destination": [
                    "obj-215",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-215",
                    0
                  ],
                  "destination": [
                    "obj-216",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-216",
                    0
                  ],
                  "destination": [
                    "obj-218",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-218",
                    4
                  ],
                  "destination": [
                    "obj-219",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-218",
                    3
                  ],
                  "destination": [
                    "obj-220",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-218",
                    2
                  ],
                  "destination": [
                    "obj-221",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-218",
                    1
                  ],
                  "destination": [
                    "obj-222",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-218",
                    0
                  ],
                  "destination": [
                    "obj-223",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-219",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-220",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-221",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-222",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-223",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-216",
                    1
                  ],
                  "destination": [
                    "obj-224",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-224",
                    4
                  ],
                  "destination": [
                    "obj-225",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-224",
                    3
                  ],
                  "destination": [
                    "obj-226",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-224",
                    2
                  ],
                  "destination": [
                    "obj-227",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-224",
                    1
                  ],
                  "destination": [
                    "obj-228",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-224",
                    0
                  ],
                  "destination": [
                    "obj-229",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-225",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-226",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-227",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-228",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-229",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-216",
                    2
                  ],
                  "destination": [
                    "obj-230",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-230",
                    4
                  ],
                  "destination": [
                    "obj-231",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-230",
                    3
                  ],
                  "destination": [
                    "obj-232",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-230",
                    2
                  ],
                  "destination": [
                    "obj-233",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-230",
                    1
                  ],
                  "destination": [
                    "obj-234",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-230",
                    0
                  ],
                  "destination": [
                    "obj-235",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-231",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-232",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-233",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-234",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-235",
                    0
                  ],
                  "destination": [
                    "obj-217",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    11
                  ],
                  "destination": [
                    "obj-236",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-4",
                    23
                  ],
                  "destination": [
                    "obj-236",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-236",
                    0
                  ],
                  "destination": [
                    "obj-237",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-237",
                    0
                  ],
                  "destination": [
                    "obj-239",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-239",
                    4
                  ],
                  "destination": [
                    "obj-240",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-239",
                    3
                  ],
                  "destination": [
                    "obj-241",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-239",
                    2
                  ],
                  "destination": [
                    "obj-242",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-239",
                    1
                  ],
                  "destination": [
                    "obj-243",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-239",
                    0
                  ],
                  "destination": [
                    "obj-244",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-240",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-241",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-242",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-243",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-244",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-237",
                    1
                  ],
                  "destination": [
                    "obj-245",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-245",
                    4
                  ],
                  "destination": [
                    "obj-246",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-245",
                    3
                  ],
                  "destination": [
                    "obj-247",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-245",
                    2
                  ],
                  "destination": [
                    "obj-248",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-245",
                    1
                  ],
                  "destination": [
                    "obj-249",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-245",
                    0
                  ],
                  "destination": [
                    "obj-250",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-246",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-247",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-248",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-249",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-250",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-237",
                    2
                  ],
                  "destination": [
                    "obj-251",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-251",
                    4
                  ],
                  "destination": [
                    "obj-252",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-251",
                    3
                  ],
                  "destination": [
                    "obj-253",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-251",
                    2
                  ],
                  "destination": [
                    "obj-254",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-251",
                    1
                  ],
                  "destination": [
                    "obj-255",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-251",
                    0
                  ],
                  "destination": [
                    "obj-256",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-252",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-253",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-254",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-255",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-256",
                    0
                  ],
                  "destination": [
                    "obj-238",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-258",
                    0
                  ],
                  "destination": [
                    "obj-259",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-257",
                    1
                  ],
                  "destination": [
                    "obj-259",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-257",
                    0
                  ],
                  "destination": [
                    "obj-261",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-259",
                    3
                  ],
                  "destination": [
                    "obj-262",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-262",
                    0
                  ],
                  "destination": [
                    "obj-257",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-259",
                    2
                  ],
                  "destination": [
                    "obj-263",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-263",
                    0
                  ],
                  "destination": [
                    "obj-257",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-259",
                    1
                  ],
                  "destination": [
                    "obj-264",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-264",
                    0
                  ],
                  "destination": [
                    "obj-257",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-259",
                    0
                  ],
                  "destination": [
                    "obj-265",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-265",
                    0
                  ],
                  "destination": [
                    "obj-257",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    0
                  ],
                  "destination": [
                    "obj-266",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    0
                  ],
                  "destination": [
                    "obj-260",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-266",
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
                    "obj-266",
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
                    "obj-266",
                    0
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
                    "obj-266",
                    0
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
                    "obj-266",
                    0
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
                    "obj-266",
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
                    "obj-266",
                    0
                  ],
                  "destination": [
                    "obj-135",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-266",
                    0
                  ],
                  "destination": [
                    "obj-156",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-266",
                    0
                  ],
                  "destination": [
                    "obj-177",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-266",
                    0
                  ],
                  "destination": [
                    "obj-198",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-266",
                    0
                  ],
                  "destination": [
                    "obj-219",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-266",
                    0
                  ],
                  "destination": [
                    "obj-240",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    0
                  ],
                  "destination": [
                    "obj-267",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    0
                  ],
                  "destination": [
                    "obj-260",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-267",
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
                    "obj-267",
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
                    "obj-267",
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
                    "obj-267",
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
                    "obj-267",
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
                    "obj-267",
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
                    "obj-267",
                    0
                  ],
                  "destination": [
                    "obj-136",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-267",
                    0
                  ],
                  "destination": [
                    "obj-157",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-267",
                    0
                  ],
                  "destination": [
                    "obj-178",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-267",
                    0
                  ],
                  "destination": [
                    "obj-199",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-267",
                    0
                  ],
                  "destination": [
                    "obj-220",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-267",
                    0
                  ],
                  "destination": [
                    "obj-241",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    1
                  ],
                  "destination": [
                    "obj-268",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    1
                  ],
                  "destination": [
                    "obj-260",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-268",
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
                    "obj-268",
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
                    "obj-268",
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
                    "obj-268",
                    0
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
                    "obj-268",
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
                    "obj-268",
                    0
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
                    "obj-268",
                    0
                  ],
                  "destination": [
                    "obj-141",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-268",
                    0
                  ],
                  "destination": [
                    "obj-162",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-268",
                    0
                  ],
                  "destination": [
                    "obj-183",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-268",
                    0
                  ],
                  "destination": [
                    "obj-204",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-268",
                    0
                  ],
                  "destination": [
                    "obj-225",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-268",
                    0
                  ],
                  "destination": [
                    "obj-246",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    1
                  ],
                  "destination": [
                    "obj-269",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    1
                  ],
                  "destination": [
                    "obj-260",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-269",
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
                    "obj-269",
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
                    "obj-269",
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
                    "obj-269",
                    0
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
                    "obj-269",
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
                    "obj-269",
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
                    "obj-269",
                    0
                  ],
                  "destination": [
                    "obj-142",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-269",
                    0
                  ],
                  "destination": [
                    "obj-163",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-269",
                    0
                  ],
                  "destination": [
                    "obj-184",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-269",
                    0
                  ],
                  "destination": [
                    "obj-205",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-269",
                    0
                  ],
                  "destination": [
                    "obj-226",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-269",
                    0
                  ],
                  "destination": [
                    "obj-247",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    2
                  ],
                  "destination": [
                    "obj-270",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    2
                  ],
                  "destination": [
                    "obj-260",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-270",
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
                    "obj-270",
                    0
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
                    "obj-270",
                    0
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
                    "obj-270",
                    0
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
                    "obj-270",
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
                    "obj-270",
                    0
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
                    "obj-270",
                    0
                  ],
                  "destination": [
                    "obj-147",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-270",
                    0
                  ],
                  "destination": [
                    "obj-168",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-270",
                    0
                  ],
                  "destination": [
                    "obj-189",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-270",
                    0
                  ],
                  "destination": [
                    "obj-210",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-270",
                    0
                  ],
                  "destination": [
                    "obj-231",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-270",
                    0
                  ],
                  "destination": [
                    "obj-252",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    2
                  ],
                  "destination": [
                    "obj-271",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    2
                  ],
                  "destination": [
                    "obj-260",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-271",
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
                    "obj-271",
                    0
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
                    "obj-271",
                    0
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
                    "obj-271",
                    0
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
                    "obj-271",
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
                    "obj-271",
                    0
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
                    "obj-271",
                    0
                  ],
                  "destination": [
                    "obj-148",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-271",
                    0
                  ],
                  "destination": [
                    "obj-169",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-271",
                    0
                  ],
                  "destination": [
                    "obj-190",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-271",
                    0
                  ],
                  "destination": [
                    "obj-211",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-271",
                    0
                  ],
                  "destination": [
                    "obj-232",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-271",
                    0
                  ],
                  "destination": [
                    "obj-253",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    3
                  ],
                  "destination": [
                    "obj-272",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    3
                  ],
                  "destination": [
                    "obj-260",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-272",
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
                    "obj-272",
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
                    "obj-272",
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
                    "obj-272",
                    0
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
                    "obj-272",
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
                    "obj-272",
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
                    "obj-272",
                    0
                  ],
                  "destination": [
                    "obj-137",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-272",
                    0
                  ],
                  "destination": [
                    "obj-158",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-272",
                    0
                  ],
                  "destination": [
                    "obj-179",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-272",
                    0
                  ],
                  "destination": [
                    "obj-200",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-272",
                    0
                  ],
                  "destination": [
                    "obj-221",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-272",
                    0
                  ],
                  "destination": [
                    "obj-242",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    3
                  ],
                  "destination": [
                    "obj-273",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-261",
                    3
                  ],
                  "destination": [
                    "obj-260",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-273",
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
                    "obj-273",
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
                    "obj-273",
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
                    "obj-273",
                    0
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
                    "obj-273",
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
                    "obj-273",
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
                    "obj-273",
                    0
                  ],
                  "destination": [
                    "obj-138",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-273",
                    0
                  ],
                  "destination": [
                    "obj-159",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-273",
                    0
                  ],
                  "destination": [
                    "obj-180",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-273",
                    0
                  ],
                  "destination": [
                    "obj-201",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-273",
                    0
                  ],
                  "destination": [
                    "obj-222",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-273",
                    0
                  ],
                  "destination": [
                    "obj-243",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-260",
                    0
                  ],
                  "destination": [
                    "obj-2",
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
          "id": "obj-23",
          "maxclass": "newobj",
          "numinlets": 4,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "p manual",
          "varname": "manual",
          "patching_rect": [
            250.0,
            460.0,
            70.0,
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
              560.0
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
                  "index": 1,
                  "comment": "seed mask, no send",
                  "patching_rect": [
                    24.0,
                    24.0,
                    150.0,
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
                  "index": 2,
                  "comment": "root pitch class",
                  "patching_rect": [
                    24.0,
                    56.0,
                    150.0,
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
                  "index": 3,
                  "comment": "click: pc value",
                  "patching_rect": [
                    24.0,
                    88.0,
                    150.0,
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
                  "index": 4,
                  "comment": "bang sends the mask",
                  "patching_rect": [
                    24.0,
                    120.0,
                    150.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-5",
                  "maxclass": "outlet",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "varname": "out_mask",
                  "index": 1,
                  "comment": "manual mask",
                  "patching_rect": [
                    980.0,
                    24.0,
                    90.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-6",
                  "maxclass": "newobj",
                  "numinlets": 24,
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
                  "text": "unpack i i i i i i i i i i i i i i i i i i i i i i i i",
                  "varname": "unpack_seed",
                  "patching_rect": [
                    24.0,
                    170.0,
                    394.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-7",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "loadmess 0 0 1 0 1 1 0 1 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0",
                  "varname": "load_seed",
                  "patching_rect": [
                    24.0,
                    145.0,
                    408.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-8",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int",
                  "varname": "root_int",
                  "patching_rect": [
                    24.0,
                    220.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-9",
                  "maxclass": "newobj",
                  "numinlets": 0,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "loadmess 0",
                  "varname": "load_root",
                  "patching_rect": [
                    24.0,
                    250.0,
                    86.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-10",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_root",
                  "patching_rect": [
                    180.0,
                    56.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-11",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 12,
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
                    ""
                  ],
                  "text": "t b b b b b b b b b b b b",
                  "varname": "t_flush",
                  "patching_rect": [
                    180.0,
                    120.0,
                    191.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-12",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 12,
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
                    ""
                  ],
                  "text": "t i i i i i i i i i i i i",
                  "varname": "t_fan_root",
                  "patching_rect": [
                    180.0,
                    220.0,
                    191.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-13",
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
                  "varname": "route_click",
                  "patching_rect": [
                    180.0,
                    88.0,
                    233.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-14",
                  "maxclass": "newobj",
                  "numinlets": 24,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "pack i i i i i i i i i i i i i i i i i i i i i i i i",
                  "varname": "pack_mask",
                  "patching_rect": [
                    700.0,
                    420.0,
                    380.0,
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
                  "text": "expr $i1 || $i2",
                  "varname": "lit_0",
                  "patching_rect": [
                    24.0,
                    300.0,
                    121.0,
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
                  "text": "int 1",
                  "varname": "bit_0",
                  "patching_rect": [
                    24.0,
                    340.0,
                    51.0,
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
                  "text": "== 0",
                  "varname": "isroot_0",
                  "patching_rect": [
                    24.0,
                    370.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-18",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_0",
                  "patching_rect": [
                    24.0,
                    400.0,
                    156.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-19",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * $i2",
                  "varname": "accent_0",
                  "patching_rect": [
                    24.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-20",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_0",
                  "patching_rect": [
                    400.0,
                    88.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-21",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 || $i2",
                  "varname": "lit_1",
                  "patching_rect": [
                    94.0,
                    300.0,
                    121.0,
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
                  "text": "int 0",
                  "varname": "bit_1",
                  "patching_rect": [
                    94.0,
                    340.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-23",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "== 1",
                  "varname": "isroot_1",
                  "patching_rect": [
                    94.0,
                    370.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-24",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_1",
                  "patching_rect": [
                    94.0,
                    400.0,
                    156.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-25",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * $i2",
                  "varname": "accent_1",
                  "patching_rect": [
                    94.0,
                    430.0,
                    114.0,
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
                  "text": "t b i",
                  "varname": "t_click_1",
                  "patching_rect": [
                    400.0,
                    104.0,
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
                  "text": "expr $i1 || $i2",
                  "varname": "lit_2",
                  "patching_rect": [
                    164.0,
                    300.0,
                    121.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-28",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int 1",
                  "varname": "bit_2",
                  "patching_rect": [
                    164.0,
                    340.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-29",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "== 2",
                  "varname": "isroot_2",
                  "patching_rect": [
                    164.0,
                    370.0,
                    48.0,
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
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_2",
                  "patching_rect": [
                    164.0,
                    400.0,
                    156.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-31",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * $i2",
                  "varname": "accent_2",
                  "patching_rect": [
                    164.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-32",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_2",
                  "patching_rect": [
                    400.0,
                    120.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-33",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 || $i2",
                  "varname": "lit_3",
                  "patching_rect": [
                    234.0,
                    300.0,
                    121.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-34",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int 0",
                  "varname": "bit_3",
                  "patching_rect": [
                    234.0,
                    340.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-35",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "== 3",
                  "varname": "isroot_3",
                  "patching_rect": [
                    234.0,
                    370.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-36",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_3",
                  "patching_rect": [
                    234.0,
                    400.0,
                    156.0,
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
                  "text": "expr $i1 * $i2",
                  "varname": "accent_3",
                  "patching_rect": [
                    234.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-38",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_3",
                  "patching_rect": [
                    400.0,
                    136.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-39",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 || $i2",
                  "varname": "lit_4",
                  "patching_rect": [
                    304.0,
                    300.0,
                    121.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-40",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int 1",
                  "varname": "bit_4",
                  "patching_rect": [
                    304.0,
                    340.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-41",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "== 4",
                  "varname": "isroot_4",
                  "patching_rect": [
                    304.0,
                    370.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-42",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_4",
                  "patching_rect": [
                    304.0,
                    400.0,
                    156.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-43",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * $i2",
                  "varname": "accent_4",
                  "patching_rect": [
                    304.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-44",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_4",
                  "patching_rect": [
                    400.0,
                    152.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-45",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 || $i2",
                  "varname": "lit_5",
                  "patching_rect": [
                    374.0,
                    300.0,
                    121.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-46",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int 1",
                  "varname": "bit_5",
                  "patching_rect": [
                    374.0,
                    340.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-47",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "== 5",
                  "varname": "isroot_5",
                  "patching_rect": [
                    374.0,
                    370.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-48",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_5",
                  "patching_rect": [
                    374.0,
                    400.0,
                    156.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-49",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * $i2",
                  "varname": "accent_5",
                  "patching_rect": [
                    374.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-50",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_5",
                  "patching_rect": [
                    400.0,
                    168.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-51",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 || $i2",
                  "varname": "lit_6",
                  "patching_rect": [
                    444.0,
                    300.0,
                    121.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-52",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int 0",
                  "varname": "bit_6",
                  "patching_rect": [
                    444.0,
                    340.0,
                    51.0,
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
                  "text": "== 6",
                  "varname": "isroot_6",
                  "patching_rect": [
                    444.0,
                    370.0,
                    48.0,
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
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_6",
                  "patching_rect": [
                    444.0,
                    400.0,
                    156.0,
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
                  "text": "expr $i1 * $i2",
                  "varname": "accent_6",
                  "patching_rect": [
                    444.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-56",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_6",
                  "patching_rect": [
                    400.0,
                    184.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-57",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 || $i2",
                  "varname": "lit_7",
                  "patching_rect": [
                    514.0,
                    300.0,
                    121.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-58",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "int 1",
                  "varname": "bit_7",
                  "patching_rect": [
                    514.0,
                    340.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-59",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "== 7",
                  "varname": "isroot_7",
                  "patching_rect": [
                    514.0,
                    370.0,
                    48.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-60",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_7",
                  "patching_rect": [
                    514.0,
                    400.0,
                    156.0,
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
                  "text": "expr $i1 * $i2",
                  "varname": "accent_7",
                  "patching_rect": [
                    514.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-62",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_7",
                  "patching_rect": [
                    400.0,
                    200.0,
                    51.0,
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
                  "text": "expr $i1 || $i2",
                  "varname": "lit_8",
                  "patching_rect": [
                    584.0,
                    300.0,
                    121.0,
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
                  "text": "int 0",
                  "varname": "bit_8",
                  "patching_rect": [
                    584.0,
                    340.0,
                    51.0,
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
                  "text": "== 8",
                  "varname": "isroot_8",
                  "patching_rect": [
                    584.0,
                    370.0,
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
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_8",
                  "patching_rect": [
                    584.0,
                    400.0,
                    156.0,
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
                  "text": "expr $i1 * $i2",
                  "varname": "accent_8",
                  "patching_rect": [
                    584.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-68",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_8",
                  "patching_rect": [
                    400.0,
                    216.0,
                    51.0,
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
                  "text": "expr $i1 || $i2",
                  "varname": "lit_9",
                  "patching_rect": [
                    654.0,
                    300.0,
                    121.0,
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
                  "text": "int 1",
                  "varname": "bit_9",
                  "patching_rect": [
                    654.0,
                    340.0,
                    51.0,
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
                  "text": "== 9",
                  "varname": "isroot_9",
                  "patching_rect": [
                    654.0,
                    370.0,
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
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_9",
                  "patching_rect": [
                    654.0,
                    400.0,
                    156.0,
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
                  "text": "expr $i1 * $i2",
                  "varname": "accent_9",
                  "patching_rect": [
                    654.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-74",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_9",
                  "patching_rect": [
                    400.0,
                    232.0,
                    51.0,
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
                  "text": "expr $i1 || $i2",
                  "varname": "lit_10",
                  "patching_rect": [
                    724.0,
                    300.0,
                    121.0,
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
                  "text": "int 0",
                  "varname": "bit_10",
                  "patching_rect": [
                    724.0,
                    340.0,
                    51.0,
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
                  "text": "== 10",
                  "varname": "isroot_10",
                  "patching_rect": [
                    724.0,
                    370.0,
                    51.0,
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
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_10",
                  "patching_rect": [
                    724.0,
                    400.0,
                    156.0,
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
                  "text": "expr $i1 * $i2",
                  "varname": "accent_10",
                  "patching_rect": [
                    724.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-80",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_10",
                  "patching_rect": [
                    400.0,
                    248.0,
                    51.0,
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
                  "text": "expr $i1 || $i2",
                  "varname": "lit_11",
                  "patching_rect": [
                    794.0,
                    300.0,
                    121.0,
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
                  "text": "int 1",
                  "varname": "bit_11",
                  "patching_rect": [
                    794.0,
                    340.0,
                    51.0,
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
                  "text": "== 11",
                  "varname": "isroot_11",
                  "patching_rect": [
                    794.0,
                    370.0,
                    51.0,
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
                  "text": "expr $i1 * (1 - $i2)",
                  "varname": "main_11",
                  "patching_rect": [
                    794.0,
                    400.0,
                    156.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-85",
                  "maxclass": "newobj",
                  "numinlets": 2,
                  "numoutlets": 1,
                  "outlettype": [
                    ""
                  ],
                  "text": "expr $i1 * $i2",
                  "varname": "accent_11",
                  "patching_rect": [
                    794.0,
                    430.0,
                    114.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-86",
                  "maxclass": "newobj",
                  "numinlets": 1,
                  "numoutlets": 2,
                  "outlettype": [
                    "",
                    ""
                  ],
                  "text": "t b i",
                  "varname": "t_click_11",
                  "patching_rect": [
                    400.0,
                    264.0,
                    51.0,
                    22.0
                  ]
                }
              },
              {
                "box": {
                  "id": "obj-87",
                  "maxclass": "comment",
                  "numinlets": 1,
                  "numoutlets": 0,
                  "outlettype": [],
                  "text": "A lit root is Accent and not Main. Every other lit note is Main. Seed stores bits on the right inlet of int, so it does not send.",
                  "patching_rect": [
                    24.0,
                    480.0,
                    640.0,
                    32.0
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
                    "obj-6",
                    0
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
                    "obj-6",
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
                    "obj-8",
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
                    "obj-10",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-10",
                    1
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
                    "obj-11",
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
                    "obj-12",
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
                    "obj-11",
                    0
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
                    "obj-13",
                    0
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
                    "obj-5",
                    0
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
                    "obj-15",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    12
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
                    "obj-20",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-20",
                    1
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
                    "obj-20",
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
                    "obj-11",
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
                    "obj-12",
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
                    "obj-18",
                    1
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
                    "obj-19",
                    1
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
                    "obj-19",
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
                    0
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
                    "obj-14",
                    12
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
                    "obj-21",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    13
                  ],
                  "destination": [
                    "obj-21",
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
                    "obj-22",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    1
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
                    "obj-22",
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    1
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
                    "obj-12",
                    1
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
                    "obj-24",
                    1
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
                    "obj-25",
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
                    "obj-25",
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
                    "obj-24",
                    0
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
                    "obj-14",
                    1
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
                    "obj-14",
                    13
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
                    "obj-27",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    14
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
                    "obj-27",
                    0
                  ],
                  "destination": [
                    "obj-28",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    2
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
                    1
                  ],
                  "destination": [
                    "obj-28",
                    1
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    2
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
                    "obj-12",
                    2
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
                    "obj-29",
                    0
                  ],
                  "destination": [
                    "obj-30",
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
                    "obj-31",
                    1
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
                    "obj-31",
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
                    "obj-30",
                    0
                  ],
                  "destination": [
                    "obj-14",
                    2
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
                    "obj-14",
                    14
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
                    "obj-33",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    15
                  ],
                  "destination": [
                    "obj-33",
                    1
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
                    "obj-34",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    3
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
                    "obj-38",
                    1
                  ],
                  "destination": [
                    "obj-34",
                    1
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    3
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
                    "obj-12",
                    3
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
                    0
                  ],
                  "destination": [
                    "obj-36",
                    1
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
                    "obj-37",
                    1
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
                    "obj-37",
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
                    "obj-14",
                    3
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
                    "obj-14",
                    15
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    4
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
                    "obj-6",
                    16
                  ],
                  "destination": [
                    "obj-39",
                    1
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
                    "obj-40",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    4
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
                    "obj-44",
                    1
                  ],
                  "destination": [
                    "obj-40",
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    4
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
                    "obj-12",
                    4
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
                    "obj-41",
                    0
                  ],
                  "destination": [
                    "obj-42",
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
                    "obj-43",
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
                    "obj-43",
                    0
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
                    "obj-42",
                    0
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
                    "obj-14",
                    4
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
                    "obj-14",
                    16
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    5
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
                    "obj-6",
                    17
                  ],
                  "destination": [
                    "obj-45",
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
                    "obj-46",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    5
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
                    "obj-50",
                    1
                  ],
                  "destination": [
                    "obj-46",
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    5
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
                    "obj-12",
                    5
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
                    "obj-47",
                    0
                  ],
                  "destination": [
                    "obj-48",
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
                    "obj-49",
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
                    "obj-49",
                    0
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
                    "obj-48",
                    0
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
                    "obj-14",
                    5
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
                    "obj-14",
                    17
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    6
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
                    "obj-6",
                    18
                  ],
                  "destination": [
                    "obj-51",
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
                    "obj-52",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    6
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
                    1
                  ],
                  "destination": [
                    "obj-52",
                    1
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    6
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
                    "obj-12",
                    6
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
                    "obj-54",
                    1
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
                    "obj-55",
                    1
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
                    "obj-55",
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
                    "obj-14",
                    6
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
                    "obj-14",
                    18
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    7
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
                    "obj-6",
                    19
                  ],
                  "destination": [
                    "obj-57",
                    1
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
                    "obj-58",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    7
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
                    "obj-62",
                    1
                  ],
                  "destination": [
                    "obj-58",
                    1
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    7
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
                    "obj-12",
                    7
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
                    "obj-60",
                    1
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
                    "obj-61",
                    1
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
                    "obj-61",
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
                    "obj-60",
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
                    7
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
                    "obj-14",
                    19
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    8
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
                    "obj-6",
                    20
                  ],
                  "destination": [
                    "obj-63",
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
                    "obj-64",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    8
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
                    "obj-68",
                    1
                  ],
                  "destination": [
                    "obj-64",
                    1
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    8
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
                    "obj-12",
                    8
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
                    "obj-65",
                    0
                  ],
                  "destination": [
                    "obj-66",
                    1
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
                    "obj-67",
                    1
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
                    "obj-67",
                    0
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
                    "obj-66",
                    0
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
                    "obj-14",
                    8
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
                    "obj-14",
                    20
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    9
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
                    "obj-6",
                    21
                  ],
                  "destination": [
                    "obj-69",
                    1
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
                    "obj-70",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    9
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
                    "obj-74",
                    1
                  ],
                  "destination": [
                    "obj-70",
                    1
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
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
                    "obj-12",
                    9
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
                    "obj-71",
                    0
                  ],
                  "destination": [
                    "obj-72",
                    1
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
                    "obj-73",
                    1
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
                    "obj-73",
                    0
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
                    "obj-72",
                    0
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
                    "obj-14",
                    9
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
                    "obj-14",
                    21
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    10
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
                    "obj-6",
                    22
                  ],
                  "destination": [
                    "obj-75",
                    1
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
                    "obj-76",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    10
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
                    "obj-80",
                    1
                  ],
                  "destination": [
                    "obj-76",
                    1
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    10
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
                    "obj-12",
                    10
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
                    "obj-77",
                    0
                  ],
                  "destination": [
                    "obj-78",
                    1
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
                    "obj-79",
                    1
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
                    "obj-79",
                    0
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
                    "obj-78",
                    0
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
                    "obj-14",
                    10
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
                    "obj-14",
                    22
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-6",
                    11
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
                    "obj-6",
                    23
                  ],
                  "destination": [
                    "obj-81",
                    1
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
                    "obj-82",
                    1
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-13",
                    11
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
                    "obj-86",
                    1
                  ],
                  "destination": [
                    "obj-82",
                    1
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
                    "obj-11",
                    0
                  ]
                }
              },
              {
                "patchline": {
                  "source": [
                    "obj-11",
                    11
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
                    "obj-12",
                    11
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
                    "obj-83",
                    0
                  ],
                  "destination": [
                    "obj-84",
                    1
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
                    "obj-85",
                    1
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
                    "obj-85",
                    0
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
                    "obj-84",
                    0
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
                    "obj-14",
                    11
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
                    "obj-14",
                    23
                  ]
                }
              }
            ]
          }
        }
      },
      {
        "box": {
          "id": "obj-24",
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
          "id": "obj-25",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "A",
          "varname": "pad_9",
          "texton": "A",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note A",
              "parameter_shortname": "A",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            454.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            4,
            6,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-26",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "A#",
          "varname": "pad_10",
          "texton": "A#",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note A#",
              "parameter_shortname": "A#",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            480.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            54,
            6,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-27",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "B",
          "varname": "pad_11",
          "texton": "B",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note B",
              "parameter_shortname": "B",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            506.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            104,
            6,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-28",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "F#",
          "varname": "pad_6",
          "texton": "F#",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note F#",
              "parameter_shortname": "F#",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            376.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            4,
            46,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-29",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "G",
          "varname": "pad_7",
          "texton": "G",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note G",
              "parameter_shortname": "G",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            402.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            54,
            46,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-30",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "G#",
          "varname": "pad_8",
          "texton": "G#",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note G#",
              "parameter_shortname": "G#",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            428.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            104,
            46,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-31",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "D#",
          "varname": "pad_3",
          "texton": "D#",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note D#",
              "parameter_shortname": "D#",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            298.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            4,
            86,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-32",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "E",
          "varname": "pad_4",
          "texton": "E",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note E",
              "parameter_shortname": "E",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            324.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            54,
            86,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-33",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "F",
          "varname": "pad_5",
          "texton": "F",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note F",
              "parameter_shortname": "F",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            350.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            104,
            86,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-34",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "C",
          "varname": "pad_0",
          "texton": "C",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note C",
              "parameter_shortname": "C",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            220.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            4,
            126,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-35",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "C#",
          "varname": "pad_1",
          "texton": "C#",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note C#",
              "parameter_shortname": "C#",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            246.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            54,
            126,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-36",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "D",
          "varname": "pad_2",
          "texton": "D",
          "mode": 1,
          "outputmode": 1,
          "appearance": 0,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontsize": 12.0,
          "fontname": "Ableton Sans",
          "activebgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "bgcolor": [
            0.156863,
            0.156863,
            0.156863,
            1.0
          ],
          "activetextcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "textoffcolor": [
            0.807843,
            0.807843,
            0.807843,
            1.0
          ],
          "activebgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "bgoncolor": [
            1.0,
            0.709804,
            0.196078,
            1.0
          ],
          "activetextoncolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "textcolor": [
            0.0,
            0.0,
            0.0,
            1.0
          ],
          "saved_attribute_attributes": {
            "activebgcolor": {
              "expression": ""
            },
            "activebgoncolor": {
              "expression": ""
            },
            "activetextcolor": {
              "expression": ""
            },
            "activetextoncolor": {
              "expression": ""
            },
            "bgcolor": {
              "expression": ""
            },
            "bgoncolor": {
              "expression": ""
            },
            "textcolor": {
              "expression": ""
            },
            "textoffcolor": {
              "expression": ""
            },
            "valueof": {
              "parameter_longname": "Note D",
              "parameter_shortname": "D",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_invisible": 2,
              "parameter_modmode": 0
            }
          },
          "patching_rect": [
            700.0,
            272.0,
            48.0,
            22.0
          ],
          "presentation_rect": [
            104,
            126,
            46,
            36
          ]
        }
      },
      {
        "box": {
          "id": "obj-37",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "Scale",
          "varname": "scale_mark",
          "texton": "Scale",
          "mode": 1,
          "outputmode": 1,
          "appearance": 2,
          "border": 0,
          "rounded": 0,
          "parameter_enable": 1,
          "presentation": 1,
          "fontname": "Ableton Sans",
          "pictures": [
            "scale.svg",
            "scale.svg"
          ],
          "usepicture": 1,
          "remapsvgcolors": 1,
          "lcdcolor": [
            0.745098,
            0.596078,
            1.0,
            1.0
          ],
          "hint": "Follow the selected Live scale. Greyed out when Live has no scale selected.",
          "patching_rect": [
            900.0,
            28.0,
            16.0,
            16.0
          ],
          "presentation_rect": [
            158,
            6,
            16,
            16
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Follow Scale",
              "parameter_shortname": "Scale",
              "parameter_type": 2,
              "parameter_enum": [
                "Off",
                "On"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 1.0,
              "parameter_initial": [
                1
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 0,
              "parameter_annotation_name": "Follow Scale",
              "parameter_info": "Follow the scale of the selected clip. Off lets you toggle notes and choose the root."
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-38",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "Scale Lights",
          "patching_rect": [
            900.0,
            6.0,
            148.0,
            16.0
          ],
          "presentation": 1,
          "fontname": "Ableton Sans",
          "fontsize": 11.0,
          "presentation_rect": [
            178,
            6,
            148,
            16
          ]
        }
      },
      {
        "box": {
          "id": "obj-39",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "Root",
          "patching_rect": [
            900.0,
            30.0,
            36.0,
            14.0
          ],
          "presentation": 1,
          "fontname": "Ableton Sans",
          "fontsize": 11.0,
          "presentation_rect": [
            158,
            30,
            36,
            14
          ]
        }
      },
      {
        "box": {
          "id": "obj-40",
          "maxclass": "live.menu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            "float"
          ],
          "varname": "root_menu",
          "parameter_enable": 1,
          "presentation": 1,
          "fontname": "Ableton Sans",
          "fontsize": 11.0,
          "hint": "Cyan note. Matches Live while follow is on.",
          "patching_rect": [
            980.0,
            70.0,
            80.0,
            16.0
          ],
          "presentation_rect": [
            198,
            28,
            80,
            16
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Root",
              "parameter_shortname": "Root",
              "parameter_type": 2,
              "parameter_enum": [
                "C",
                "C#",
                "D",
                "D#",
                "E",
                "F",
                "F#",
                "G",
                "G#",
                "A",
                "A#",
                "B"
              ],
              "parameter_mmin": 0.0,
              "parameter_mmax": 11.0,
              "parameter_initial": [
                0
              ],
              "parameter_initial_enable": 1,
              "parameter_modmode": 0,
              "parameter_annotation_name": "Root",
              "parameter_info": "Pitch class shown in cyan. Follows Live's root while scale follow is on."
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-41",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "Ch",
          "patching_rect": [
            900.0,
            52.0,
            28.0,
            14.0
          ],
          "presentation": 1,
          "fontname": "Ableton Sans",
          "fontsize": 11.0,
          "presentation_rect": [
            158,
            52,
            28,
            14
          ]
        }
      },
      {
        "box": {
          "id": "obj-42",
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
          "fontname": "Ableton Sans",
          "fontsize": 11.0,
          "hint": "Main channel of the split you are lighting. Left split defaults to 1, right split to 16.",
          "patching_rect": [
            980.0,
            100.0,
            40.0,
            16.0
          ],
          "presentation_rect": [
            198,
            50,
            40,
            16
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
          "id": "obj-43",
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
          "rounded": 0,
          "parameter_enable": 0,
          "presentation": 1,
          "fontname": "Ableton Sans",
          "fontsize": 11.0,
          "hint": "Read the current Live scale again and send all 24 light NRPNs.",
          "patching_rect": [
            1040.0,
            96.0,
            68.0,
            18.0
          ],
          "presentation_rect": [
            158,
            74,
            68,
            18
          ]
        }
      },
      {
        "box": {
          "id": "obj-44",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "Reset",
          "varname": "reset_scale",
          "mode": 0,
          "border": 1,
          "rounded": 0,
          "parameter_enable": 0,
          "presentation": 1,
          "fontname": "Ableton Sans",
          "fontsize": 11.0,
          "hint": "Reset the lit notes to C major. Only available when Follow Scale is off.",
          "patching_rect": [
            1120.0,
            96.0,
            68.0,
            18.0
          ],
          "presentation_rect": [
            232,
            74,
            68,
            18
          ]
        }
      },
      {
        "box": {
          "id": "obj-45",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "MIDI To: LinnStrument",
          "patching_rect": [
            900.0,
            98.0,
            168.0,
            14.0
          ],
          "presentation": 1,
          "fontname": "Ableton Sans",
          "fontsize": 11.0,
          "presentation_rect": [
            158,
            98,
            168,
            14
          ]
        }
      },
      {
        "box": {
          "id": "obj-46",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "outlettype": [],
          "text": "Scale name",
          "varname": "name_comment",
          "patching_rect": [
            900.0,
            118.0,
            168.0,
            16.0
          ],
          "presentation": 1,
          "fontname": "Ableton Sans",
          "fontsize": 11.0,
          "presentation_rect": [
            158,
            118,
            168,
            16
          ]
        }
      },
      {
        "box": {
          "id": "obj-47",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 0",
          "varname": "click_0",
          "patching_rect": [
            700.0,
            300.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-48",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 1",
          "varname": "click_1",
          "patching_rect": [
            700.0,
            318.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-49",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 2",
          "varname": "click_2",
          "patching_rect": [
            700.0,
            336.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-50",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 3",
          "varname": "click_3",
          "patching_rect": [
            700.0,
            354.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-51",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 4",
          "varname": "click_4",
          "patching_rect": [
            700.0,
            372.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-52",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 5",
          "varname": "click_5",
          "patching_rect": [
            700.0,
            390.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-53",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 6",
          "varname": "click_6",
          "patching_rect": [
            700.0,
            408.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-54",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 7",
          "varname": "click_7",
          "patching_rect": [
            700.0,
            426.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-55",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 8",
          "varname": "click_8",
          "patching_rect": [
            700.0,
            444.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-56",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 9",
          "varname": "click_9",
          "patching_rect": [
            700.0,
            462.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-57",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 10",
          "varname": "click_10",
          "patching_rect": [
            700.0,
            480.0,
            86.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-58",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend 11",
          "varname": "click_11",
          "patching_rect": [
            700.0,
            498.0,
            86.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-59",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "int",
          "varname": "scale_mode_int",
          "patching_rect": [
            400.0,
            520.0,
            48.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-60",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "int",
          "varname": "button_int",
          "patching_rect": [
            400.0,
            560.0,
            48.0,
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
          "text": "expr $i1 * $i2",
          "varname": "expr_follow",
          "patching_rect": [
            520.0,
            540.0,
            114.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-62",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "text": "t i i i i",
          "varname": "t_follow_fan",
          "patching_rect": [
            520.0,
            564.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-63",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "expr 1 - $i1",
          "varname": "expr_edit",
          "patching_rect": [
            640.0,
            540.0,
            100.0,
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
          "text": "change -1",
          "varname": "follow_change",
          "patching_rect": [
            520.0,
            592.0,
            79.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-65",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "t b i",
          "varname": "t_button",
          "patching_rect": [
            400.0,
            600.0,
            51.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-66",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "text": "t i i",
          "varname": "t_follow",
          "patching_rect": [
            520.0,
            620.0,
            51.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-67",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "sel 0 1",
          "varname": "sel_scale",
          "patching_rect": [
            400.0,
            660.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-68",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "sel 0 1",
          "varname": "sel_follow",
          "patching_rect": [
            520.0,
            660.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-69",
          "maxclass": "newobj",
          "numinlets": 0,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "loadmess 1",
          "varname": "load_follow",
          "patching_rect": [
            400.0,
            640.0,
            86.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-70",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "active 0",
          "varname": "grey_scale",
          "patching_rect": [
            400.0,
            700.0,
            68.8,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-71",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "active 1",
          "varname": "arm_scale",
          "patching_rect": [
            400.0,
            730.0,
            68.8,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-72",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "ignoreclick 0",
          "varname": "show_clicks",
          "patching_rect": [
            640.0,
            700.0,
            101.8,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-73",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "ignoreclick 1",
          "varname": "block_clicks",
          "patching_rect": [
            640.0,
            730.0,
            101.8,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-74",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "expr (($i1 % 12) + 12) % 12",
          "varname": "expr_live_root",
          "patching_rect": [
            800.0,
            520.0,
            205.0,
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
          "varname": "live_root_int",
          "patching_rect": [
            800.0,
            560.0,
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
          "text": "gate",
          "varname": "assign_gate",
          "patching_rect": [
            900.0,
            520.0,
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
          "text": "gate",
          "varname": "live_root_gate",
          "patching_rect": [
            900.0,
            560.0,
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
          "text": "gate",
          "varname": "menu_gate",
          "patching_rect": [
            900.0,
            600.0,
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
          "text": "gate",
          "varname": "once_gate",
          "patching_rect": [
            900.0,
            640.0,
            48.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-80",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "prepend assign",
          "varname": "prepend_assign",
          "patching_rect": [
            1040.0,
            520.0,
            114.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-81",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "t b b b",
          "varname": "t_enter_manual",
          "patching_rect": [
            800.0,
            660.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-82",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "1",
          "varname": "open_once",
          "patching_rect": [
            760.0,
            700.0,
            36.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-83",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "0",
          "varname": "close_once",
          "patching_rect": [
            760.0,
            730.0,
            36.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-84",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "",
            "",
            ""
          ],
          "text": "t b b b",
          "varname": "t_reset",
          "patching_rect": [
            1120.0,
            640.0,
            65.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-85",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "0 0 1 0 1 1 0 1 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0",
          "varname": "reset_mask",
          "patching_rect": [
            1240.0,
            680.0,
            326.2,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-86",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "set 0",
          "varname": "reset_menu",
          "patching_rect": [
            1180.0,
            700.0,
            49.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-87",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "0",
          "varname": "reset_root",
          "patching_rect": [
            1120.0,
            720.0,
            36.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-88",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "active 0",
          "varname": "grey_reset",
          "patching_rect": [
            1120.0,
            760.0,
            68.8,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-89",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "text": "active 1",
          "varname": "arm_reset",
          "patching_rect": [
            1200.0,
            760.0,
            68.8,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-90",
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
            "obj-18",
            1
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
            "obj-18",
            1
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
            "obj-18",
            7
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
            "obj-24",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-22",
            9
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
            "obj-22",
            10
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
            "obj-22",
            11
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
            "obj-22",
            6
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
            7
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
            "obj-22",
            8
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
            "obj-22",
            3
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
            "obj-22",
            4
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
            "obj-22",
            5
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
            "obj-22",
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
            "obj-22",
            1
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
            "obj-22",
            2
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
            "obj-34",
            0
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
            "obj-47",
            0
          ],
          "destination": [
            "obj-23",
            2
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
            "obj-48",
            0
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
            "obj-23",
            2
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
            "obj-49",
            0
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
            "obj-23",
            2
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
            "obj-50",
            0
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
            "obj-23",
            2
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
            "obj-51",
            0
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
            "obj-23",
            2
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
            "obj-52",
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
            "obj-23",
            2
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
            "obj-23",
            2
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
            "obj-23",
            2
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
            "obj-23",
            2
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
            "obj-23",
            2
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
            "obj-57",
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
            "obj-23",
            2
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
            "obj-58",
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
            "obj-23",
            2
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
            "obj-61",
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
            "obj-67",
            0
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
            "obj-70",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-67",
            1
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
            "obj-70",
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
            "obj-71",
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
            "obj-69",
            0
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
            "obj-37",
            0
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
            "obj-65",
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
            0
          ],
          "destination": [
            "obj-61",
            1
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
            "obj-59",
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
            "obj-62",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-62",
            3
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
            "obj-62",
            2
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
            "obj-62",
            1
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
            "obj-63",
            0
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
            "obj-62",
            0
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
            "obj-64",
            0
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
            "obj-66",
            1
          ],
          "destination": [
            "obj-18",
            6
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
            "obj-68",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-68",
            1
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
            "obj-68",
            1
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
            "obj-68",
            1
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
            "obj-68",
            0
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
            "obj-68",
            0
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
            "obj-73",
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
            "obj-72",
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
            "obj-73",
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
            "obj-72",
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
            "obj-73",
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
            "obj-72",
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
            "obj-73",
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
            "obj-72",
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
            "obj-73",
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
            "obj-72",
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
            "obj-73",
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
            "obj-72",
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
            "obj-73",
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
            "obj-72",
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
            "obj-73",
            0
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
            "obj-72",
            0
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
            "obj-73",
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
            "obj-72",
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
            "obj-73",
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
            "obj-72",
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
            "obj-73",
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
            "obj-72",
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
            "obj-73",
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
            "obj-72",
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
            "obj-81",
            2
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
            "obj-82",
            0
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
            "obj-81",
            1
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
            "obj-81",
            0
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
            "obj-83",
            0
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
            "obj-10",
            0
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
            "obj-74",
            0
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
            "obj-75",
            0
          ],
          "destination": [
            "obj-76",
            1
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
            "obj-77",
            1
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
            "obj-79",
            1
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
            "obj-80",
            0
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
            "obj-40",
            0
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
            "obj-40",
            0
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
            "obj-78",
            1
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
            "obj-23",
            1
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
            "obj-23",
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
            "obj-84",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-84",
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
            "obj-85",
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
            "obj-84",
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
            "obj-86",
            0
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
            "obj-84",
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
            "obj-87",
            0
          ],
          "destination": [
            "obj-23",
            1
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
            "obj-44",
            0
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
            "obj-44",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-68",
            1
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
            "obj-68",
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
            "obj-88",
            0
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
            "obj-89",
            0
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
            "obj-42",
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
            "obj-42",
            0
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
            "obj-17",
            0
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
            "obj-23",
            3
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
            "obj-46",
            0
          ]
        }
      }
    ],
    "description": "Lights a LinnStrument from the scale of the clip selected in Live 12.",
    "digest": "LinnStrument scale lights"
  }
}
