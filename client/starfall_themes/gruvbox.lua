if not (SF and SF.Editor) then return end

SF.Editor.color_schemes = SF.Editor.color_schemes or {}

local gruvbox = {

    bg      = Color( 40,  40,  40), -- 282828
    red0    = Color(204,  36,  29), -- CC241D
    green0  = Color(152, 151,  26), -- 98971A
    yellow0 = Color(215, 153,  33), -- D79921
    blue0   = Color( 69, 133, 136), -- 458588
    purple0 = Color(177,  98, 134), -- B16286
    aqua0   = Color(104, 157, 106), -- 689D6A
    gray0   = Color(168, 153, 132), -- A89984
    gray1   = Color(146, 131, 116), -- 928374
    red1    = Color(251,  73,  52), -- FB4934
    green1  = Color(184, 187,  38), -- B8BB26
    yellow1 = Color(250, 189,  47), -- FABD2F
    blue1   = Color(131, 165, 152), -- 83A598
    purple1 = Color(211, 134, 155), -- D3869B
    aqua1   = Color(142, 192, 124), -- 8EC07C
    fg      = Color(235, 219, 178), -- EBDBB2

    bg0_h   = Color( 29,  32,  33), -- 1D2021
    bg0     = Color( 40,  40,  40), -- 282828 (same as bg)
    bg1     = Color( 60,  56,  54), -- 3C3836
    bg2     = Color( 80,  73,  69), -- 504945
    bg3     = Color(102,  92,  84), -- 665C54
    bg4     = Color(124, 111, 100), -- 7C6F64
    gray    = Color(146, 131, 116), -- 928374 (same as gray1)
    orange0 = Color(214,  93,  14), -- D65D0E
    bg0_s   = Color( 50,  48,  47), -- 32302F
    fg4     = Color(168, 153, 132), -- A89984 (same as gray0)
    fg3     = Color(189, 174, 147), -- BDAE93
    fg2     = Color(213, 196, 161), -- D5C4A1
    fg1     = Color(235, 219, 178), -- EBDBB2 (same as fg)
    fg0     = Color(251, 241, 199), -- FBF1C7
    orange1 = Color(254, 128,  25)  -- FE8019

}

SF.Editor.color_schemes.gruvbox = gruvbox

SF.Editor.Themes.AddTheme("gruvbox", {

    Name = "gruvbox",

    background        = gruvbox.bg,
    line_highlight    = gruvbox.bg1,
    gutter_foreground = gruvbox.bg4,
    gutter_background = gruvbox.bg,
    gutter_divider    = gruvbox.bg4,
    caret             = gruvbox.gray0,
    selection         = gruvbox.gray1,
    word_highlight    = gruvbox.gray0,

    -- { foreground color, background color, font style }
    keyword      = { gruvbox.red1,    nil, 1 },
    storageType  = { gruvbox.red1,    nil, 1 },
    directive    = { gruvbox.blue1,   nil, 0 },
    comment      = { gruvbox.gray1,   nil, 0 },
    string       = { gruvbox.green1,  nil, 0 },
    number       = { gruvbox.purple1, nil, 0 },
    ["function"] = { gruvbox.aqua1,   nil, 0 },
    method       = { gruvbox.aqua1,   nil, 0 },
    library      = { gruvbox.yellow1, nil, 0 },
    operator     = { gruvbox.orange1, nil, 0 },
    notfound     = { gruvbox.orange1, nil, 0 },
    bracket      = { gruvbox.yellow0, nil, 0 },
    userfunction = { gruvbox.blue0,   nil, 0 },
    constant     = { gruvbox.purple1, nil, 0 },
    identifier   = { gruvbox.fg,      nil, 0 }

})
