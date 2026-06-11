-- Technically the pipe models have 5 skins, the same as the rest of the sewer
-- rooms, but none of them except the default skin are usable and so have been
-- omitted from the table.

module("scene_building", package.seeall)

connector_small_room = 0
connector_small_hall = 1
connector_sewer_beam = 2
connector_sewer_tunnel = 3
connector_sewer_arch = 4
connector_sewer_pipe = 5

room_type_small_rooms = 0
room_type_small_hallways = 1
room_type_sewer_system = 2

dictionary = {
    [1] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/1door.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [2] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(-64, 124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/1door_l.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms

    },
    [3] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(64, 124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/1door_r.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [4] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(-64, 124, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(-64, -124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/2door_opp.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [5] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(-64, 124, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(64, -124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/2door_opp_l.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [6] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(-64, 124, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, -124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/2door_opp_ml.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [7] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(64, 124, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, -124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/2door_opp_mr.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [8] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(64, 124, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(-64, -124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/2door_opp_r.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [9] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 124, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, -124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/2door_opposites.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [10] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(124, 0, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, -124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/2door_sides.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [11] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(124, 0, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, 124, -64),
                ["type"] = connector_small_room
            },
            [3] = {
                ["pos"] = Vector(0, -124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/3door.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [12] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(124, 0, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, 124, -64),
                ["type"] = connector_small_room
            },
            [3] = {
                ["pos"] = Vector(-124, 0, -64),
                ["type"] = connector_small_room
            },
            [4] = {
                ["pos"] = Vector(0, -124, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(124, 124, 68),
        ["mins"] = Vector(-124, -124, 68),
        ["model"] = "models/scene_building/small_rooms/4door.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [13] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 164, 0),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, -164, -128),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(40, 164, 132),
        ["mins"] = Vector(-40, -164, -132),
        ["model"] = "models/scene_building/small_rooms/stairs_straight.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_rooms
    },
    [14] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_hall
            },
            [2] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(44, 48, 68),
        ["mins"] = Vector(-44, -48, -68),
        ["model"] = "models/scene_building/small_hallways/hall_1door.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [15] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 16, -64),
                ["type"] = connector_small_hall
            },
            [2] = {
                ["pos"] = Vector(0, -16, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(44, 16, 68),
        ["mins"] = Vector(-44, -16, -68),
        ["model"] = "models/scene_building/small_hallways/hall_1door_med.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [16] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_hall
            },
            [2] = {
                ["pos"] = Vector(-44, 0, -64),
                ["type"] = connector_small_room
            },
            [3] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_hall
            }
        },
        ["maxs"] = Vector(44, 48, 68),
        ["mins"] = Vector(-44, -48, -68),
        ["model"] = "models/scene_building/small_hallways/hall_1door_side.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [17] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 6, -64),
                ["type"] = connector_small_hall
            },
            [2] = {
                ["pos"] = Vector(0, -6, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(44, 6, 68),
        ["mins"] = Vector(-44, -6, -68),
        ["model"] = "models/scene_building/small_hallways/hall_1door_sml.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [18] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_hall
            },
            [2] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_small_room
            },
            [3] = {
                ["pos"] = {44, -4, -64},
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(44, 48, 68),
        ["mins"] = Vector(-44, -48, -68),
        ["model"] = "models/scene_building/small_hallways/hall_2door_l.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [19] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(44, 48, 68),
        ["mins"] = Vector(-44, -48, -68),
        ["model"] = "models/scene_building/small_hallways/hall_2door_opp.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [20] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 32, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, -32, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(44, 32, 68),
        ["mins"] = Vector(-44, -32, -68),
        ["model"] = "models/scene_building/small_hallways/hall_2door_opp_small.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [21] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_hall
            },
            [2] = {
                ["pos"] = Vector(-44, -4, -64),
                ["type"] = connector_small_room
            },
            [3] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(44, 48, 68),
        ["mins"] = Vector(-44, -48, -68),
        ["model"] = "models/scene_building/small_hallways/hall_2door_r.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [22] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(44, 0, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_hall
            },
            [3] = {
                ["pos"] = Vector(-44, 0, -64),
                ["type"] = connector_small_room
            },
            [4] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_small_hall
            },
        },
        ["maxs"] = Vector(44, 48, 68),
        ["mins"] = Vector(-44, -48, -68),
        ["model"] = "models/scene_building/small_hallways/hall_2door_side.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [23] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(44, -4, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_hall
            },
            [3] = {
                ["pos"] = Vector(-44, -4, -64),
                ["type"] = connector_small_room
            },
            [4] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_small_room
            },
        },
        ["maxs"] = Vector(44, 48, 68),
        ["mins"] = Vector(-44, -48, -68),
        ["model"] = "models/scene_building/small_hallways/hall_3door.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [24] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_hall
            },
            [2] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_small_hall
            }
        },
        ["maxs"] = Vector(44, 48, 68),
        ["mins"] = Vector(-44, -48, -68),
        ["model"] = "models/scene_building/small_hallways/hall_connector.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [25] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_hall
            },
            [2] = {
                ["pos"] = Vector(-46, 0, -64),
                ["type"] = connector_small_hall
            },
            [3] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_small_hall
            }
        },
        ["maxs"] = Vector(46, 48, 68),
        ["mins"] = Vector(-46, -48, -68),
        ["model"] = "models/scene_building/small_hallways/hall_connector_3way.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [26] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(48, 0, -64),
                ["type"] = connector_small_hall
            },
            [2] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_small_hall
            },
            [3] = {
                ["pos"] = Vector(-48, 0, -64),
                ["type"] = connector_small_hall
            },
            [4] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_small_hall
            },
        },
        ["maxs"] = Vector(44, 48, 68),
        ["mins"] = Vector(-44, -48, -68),
        ["model"] = "models/scene_building/small_hallways/hall_connector_4way.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [27] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(-46, 0, -64),
                ["type"] = connector_small_hall
            },
            [2] = {
                ["pos"] = Vector(0, -46, -64),
                ["type"] = connector_small_hall
            },
        },
        ["maxs"] = Vector(44, 46, 68),
        ["mins"] = Vector(-44, -46, -68),
        ["model"] = "models/scene_building/small_hallways/hall_connector_corner.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [28] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, -46, -64),
                ["type"] = connector_small_hall
            },
        },
        ["maxs"] = Vector(44, 46, 68),
        ["mins"] = Vector(-44, -46, -68),
        ["model"] = "models/scene_building/small_hallways/hall_connector_deadend.mdl",
        ["skins"] = 11,
        ["type"] = room_type_small_hallways
    },
    [29] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(48, 0, -64),
                ["type"] = connector_sewer_arch
            },
            [2] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_sewer_arch
            },
            [3] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_sewer_arch
            }
        },
        ["maxs"] = Vector(48, 48, 68),
        ["mins"] = Vector(-48, -48, -68),
        ["model"] = "models/scene_building/small_hallways/arch_hall_3way.mdl",
        ["skins"] = 5,
        ["type"] = room_type_small_hallways
    },
    [30] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(48, 0, -64),
                ["type"] = connector_sewer_arch
            },
            [2] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_sewer_arch
            },
            [3] = {
                ["pos"] = Vector(-48, 0, -64),
                ["type"] = connector_sewer_arch
            },
            [4] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_sewer_arch
            },
        },
        ["maxs"] = Vector(48, 48, 68),
        ["mins"] = Vector(-48, -48, -68),
        ["model"] = "models/scene_building/small_hallways/arch_hall_4way.mdl",
        ["skins"] = 5,
        ["type"] = room_type_small_hallways
    },
    [31] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(48, 0, -64),
                ["type"] = connector_sewer_arch
            },
            [2] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_sewer_arch
            }
        },
        ["maxs"] = Vector(48, 48, 68),
        ["mins"] = Vector(-48, -48, -68),
        ["model"] = "models/scene_building/small_hallways/arch_hall_corner.mdl",
        ["skins"] = 5,
        ["type"] = room_type_small_hallways
    },
    [32] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 48, -66),
                ["type"] = connector_sewer_arch
            },
            [2] = {
                ["pos"] = Vector(0, -48, -66),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(48, 48, 66),
        ["mins"] = Vector(-48, -48, -70),
        ["model"] = "models/scene_building/small_hallways/arch_small_door1.mdl",
        ["offset"] = Vector(0, 0, -2),
        ["skins"] = 5,
        ["type"] = room_type_small_hallways
    },
    [33] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 48, -66),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, -48, -66),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(48, 48, 66),
        ["mins"] = Vector(-48, -48, -70),
        ["model"] = "models/scene_building/small_hallways/arch_small_door2.mdl",
        ["offset"] = Vector(0, 0, -2),
        ["skins"] = 5,
        ["type"] = room_type_small_hallways
    },
    [34] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 48, -64),
                ["type"] = connector_sewer_arch
            },
            [2] = {
                ["pos"] = Vector(0, -48, -64),
                ["type"] = connector_sewer_arch
            }
        },
        ["maxs"] = Vector(48, 48, 68),
        ["mins"] = Vector(-48, -48, -68),
        ["model"] = "models/scene_building/small_hallways/arch_small_hall.mdl",
        ["skins"] = 5,
        ["type"] = room_type_small_hallways
    },
    [35] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 24, -64),
                ["type"] = connector_sewer_arch
            },
            [2] = {
                ["pos"] = Vector(0, -24, -64),
                ["type"] = connector_sewer_arch
            }
        },
        ["maxs"] = Vector(48, 24, 68),
        ["mins"] = Vector(-48, -24, -68),
        ["model"] = "models/scene_building/small_hallways/arch_small_hall_med.mdl",
        ["skins"] = 5,
        ["type"] = room_type_small_hallways
    },
    [36] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 12, -64),
                ["type"] = connector_sewer_arch
            },
            [2] = {
                ["pos"] = Vector(0, -12, -64),
                ["type"] = connector_sewer_arch
            }
        },
        ["maxs"] = Vector(48, 12, 68),
        ["mins"] = Vector(-48, -12, -68),
        ["model"] = "models/scene_building/small_hallways/arch_small_hall_small.mdl",
        ["skins"] = 5,
        ["type"] = room_type_small_hallways
    },
    [37] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 7, -66),
                ["type"] = connector_sewer_beam
            },
            [2] = {
                ["pos"] = Vector(0, -7, -66),
                ["type"] = connector_small_room
            }
        },
        ["maxs"] = Vector(36, 7, 66),
        ["mins"] = Vector(-36, -7, -70),
        ["model"] = "models/scene_building/sewer_system/beam_door.mdl",
        ["offset"] = Vector(0, 0, -2),
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [38] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 45, -66),
                ["type"] = connector_sewer_beam
            },
            [2] = {
                ["pos"] = Vector(0, -45, -66),
                ["type"] = connector_sewer_beam
            }
        },
        ["maxs"] = Vector(36, 45, 66),
        ["mins"] = Vector(-36, -45, -70),
        ["model"] = "models/scene_building/sewer_system/beam_hall.mdl",
        ["offset"] = Vector(0, 0, -2),
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [39] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 45, -76),
                ["type"] = connector_sewer_beam
            },
            [2] = {
                ["pos"] = Vector(0, -45, -76),
                ["type"] = connector_sewer_beam
            }
        },
        ["maxs"] = Vector(36, 45, 76),
        ["mins"] = Vector(-36, -45, -80),
        ["model"] = "models/scene_building/sewer_system/beam_hall_sky.mdl",
        ["offset"] = Vector(0, 0, -2),
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [40] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 45, -62),
                ["type"] = connector_sewer_beam
            },
            [2] = {
                ["pos"] = Vector(0, -45, -62),
                ["type"] = connector_sewer_beam
            }
        },
        ["maxs"] = Vector(36, 45, 90),
        ["mins"] = Vector(-36, -45, -90),
        ["model"] = "models/scene_building/sewer_system/beam_hall_sky_dip.mdl",
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [41] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(-20, 128, -92),
                ["type"] = connector_sewer_beam
            },
            [2] = {
                ["pos"] = Vector(-94, -28, -52),
                ["type"] = connector_sewer_beam
            }
        },
        ["maxs"] = Vector(94, 128, 100),
        ["mins"] = Vector(-94, -128, -100),
        ["model"] = "models/scene_building/sewer_system/comp_roundroom.mdl",
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [42] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(144, 0, -64),
                ["type"] = connector_small_room
            },
            [2] = {
                ["pos"] = Vector(0, 176, -112),
                ["type"] = connector_sewer_tunnel
            },
            [3] = {
                ["pos"] = Vector(-144, 0, -64),
                ["type"] = connector_small_room
            },
            [4] = {
                ["pos"] = Vector(0, -176, -112),
                ["type"] = connector_sewer_tunnel
            }
        },
        ["maxs"] = Vector(144, 176, 112),
        ["mins"] = Vector(-144, -176, -120),
        ["model"] = "models/scene_building/sewer_system/tunnel_2door.mdl",
        ["skins"] = 5,
        ["offset"] = Vector(0, 0, -3),
        ["type"] = room_type_sewer_system
    },
    [43] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(172, 28, -92),
                ["type"] = connector_sewer_tunnel
            },
            [2] = {
                ["pos"] = Vector(-28, -172, -92),
                ["type"] = connector_sewer_tunnel
            }
        },
        ["maxs"] = Vector(172, 172, 132),
        ["mins"] = Vector(-172, -172, -100),
        ["model"] = "models/scene_building/sewer_system/tunnel_2sec.mdl",
        ["offset"] = Vector(0, 0, 16),
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [44] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(200, 28, -92),
                ["type"] = connector_sewer_tunnel
            },
            [2] = {
                ["pos"] = Vector(-200, 28, -92),
                ["type"] = connector_sewer_tunnel
            },
            [3] = {
                ["pos"] = Vector(0, -172, -92),
                ["type"] = connector_sewer_tunnel
            }
        },
        ["maxs"] = Vector(172, 172, 132),
        ["mins"] = Vector(-172, -172, -100),
        ["model"] = "models/scene_building/sewer_system/tunnel_3sec.mdl",
        ["offset"] = Vector(0, 0, 16),
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [45] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(-50, 20, -96),
                ["type"] = connector_sewer_tunnel
            },
            [2] = {
                ["pos"] = Vector(8, -121.5, -96),
                ["type"] = connector_sewer_tunnel
            }
        },
        ["maxs"] = Vector(152, 121, 101),
        ["mins"] = Vector(-152, -121, -104),
        ["model"] = "models/scene_building/sewer_system/tunnel_big_bend.mdl",
        ["offset"] = Vector(0, 0, -1),
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [46] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 176, -112),
                ["type"] = connector_sewer_tunnel
            },
            [2] = {
                ["pos"] = Vector(-144, 0, -64),
                ["type"] = connector_small_room
            },
            [3] = {
                ["pos"] = Vector(0, -176, -112),
                ["type"] = connector_sewer_tunnel
            }
        },
        ["maxs"] = Vector(144, 176, 112),
        ["mins"] = Vector(-144, -176, -120),
        ["model"] = "models/scene_building/sewer_system/tunnel_door.mdl",
        ["offset"] = Vector(0, 0, -3),
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [47] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(-25, -91, -66),
                ["type"] = connector_sewer_pipe
            },
            [2] = {
                ["pos"] = Vector(91, 25, -66),
                ["type"] = connector_sewer_pipe
            }
        },
        ["maxs"] = Vector(91, 102, 77),
        ["mins"] = Vector(-101, -92, -77),
        ["model"] = "models/scene_building/sewer_system/tunnel_pipe_2sec.mdl",
        ["offset"] = Vector(-5, 4, 0),
        ["type"] = room_type_sewer_system
    },
    [48] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(112, 25, -66),
                ["type"] = connector_sewer_pipe
            },
            [2] = {
                ["pos"] = Vector(-112, 25, -66),
                ["type"] = connector_sewer_pipe
            },
            [3] = {
                ["pos"] = Vector(-4, -90, -66),
                ["type"] = connector_sewer_pipe
            }
        },
        ["maxs"] = Vector(91, 102, 77),
        ["mins"] = Vector(-101, -92, -77),
        ["model"] = "models/scene_building/sewer_system/tunnel_pipe_3sec.mdl",
        ["offset"] = Vector(0, 4, 0),
        ["type"] = room_type_sewer_system
    },
    [49] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(-93, -27, -66),
                ["type"] = connector_sewer_pipe
            },
            [2] = {
                ["pos"] = Vector(-27, -93, -66),
                ["type"] = connector_sewer_pipe
            }
        },
        ["maxs"] = Vector(92, 98, 71),
        ["mins"] = Vector(-98, -92, -71),
        ["model"] = "models/scene_building/sewer_system/tunnel_pipe_bend.mdl",
        ["offset"] = Vector(-2, 2, 0),
        ["type"] = room_type_sewer_system
    },
    [50] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 60, -108),
                ["type"] = connector_sewer_tunnel
            },
            [2] = {
                ["pos"] = Vector(0, -60, -86),
                ["type"] = connector_sewer_pipe
            }
            
        },
        ["maxs"] = Vector(144, 60, 116),
        ["mins"] = Vector(-144, -60, -116),
        ["model"] = "models/scene_building/sewer_system/tunnel_pipe_ent.mdl",
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [51] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 60, -108),
                ["type"] = connector_sewer_tunnel
            },
            [2] = {
                ["pos"] = Vector(0, -60, -86),
                ["type"] = connector_sewer_pipe
            }
            
        },
        ["maxs"] = Vector(144, 60, 116),
        ["mins"] = Vector(-144, -60, -116),
        ["model"] = "models/scene_building/sewer_system/tunnel_pipe_ent_gate.mdl",
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    },
    [52] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 116, -66),
                ["type"] = connector_sewer_pipe
            },
            [2] = {
                ["pos"] = Vector(0, -116, -66),
                ["type"] = connector_sewer_pipe
            }
            
        },
        ["maxs"] = Vector(77, 116, 77),
        ["mins"] = Vector(-77, -116, -77),
        ["model"] = "models/scene_building/sewer_system/tunnel_pipe_long.mdl",
        ["type"] = room_type_sewer_system
    },
    [53] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 64, -66),
                ["type"] = connector_sewer_pipe
            },
            [2] = {
                ["pos"] = Vector(0, -64, -66),
                ["type"] = connector_sewer_pipe
            }
            
        },
        ["maxs"] = Vector(77, 64, 77),
        ["mins"] = Vector(-77, -64, -77),
        ["model"] = "models/scene_building/sewer_system/tunnel_pipe_mid.mdl",
        ["type"] = room_type_sewer_system
    },
    [54] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 32, -66),
                ["type"] = connector_sewer_pipe
            },
            [2] = {
                ["pos"] = Vector(0, -32, -66),
                ["type"] = connector_sewer_pipe
            }
            
        },
        ["maxs"] = Vector(77, 32, 77),
        ["mins"] = Vector(-77, -32, -77),
        ["model"] = "models/scene_building/sewer_system/tunnel_pipe_short.mdl",
        ["type"] = room_type_sewer_system
    },
    [55] = {
        ["connector"] = {
            [1] = {
                ["pos"] = Vector(0, 32, -66),
                ["type"] = connector_sewer_tunnel
            },
            [2] = {
                ["pos"] = Vector(0, -32, -66),
                ["type"] = connector_sewer_tunnel
            }
        },
        ["maxs"] = Vector(144, 96, 128),
        ["mins"] = Vector(-144, -96, -104),
        ["model"] = "models/scene_building/sewer_system/tunnel_straight.mdl",
        ["offset"] = Vector(0, 0, 12),
        ["skins"] = 5,
        ["type"] = room_type_sewer_system
    }
}
