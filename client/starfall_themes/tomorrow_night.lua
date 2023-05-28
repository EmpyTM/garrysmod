local tmrw_night = {
    red         = Color(215, 124, 121),
    orange      = Color(230, 164, 114),
    yellow      = Color(244, 207, 134),
    green       = Color(194, 199, 123),
    aqua        = Color(154, 201, 196),
    blue        = Color(146, 178, 202),
    purple      = Color(192, 167, 199),
    white       = Color(215, 218, 216),
    silver      = Color(167, 168, 167),
    gray        = Color( 71,  76,  82),
    dark_gray   = Color( 53,  56,  60),
    black       = Color( 39,  41,  44)
}

SF.Editor.Themes.AddTheme("tomorrow_night", {
        
    Name = "Tomorrow Night",
        
    background        = tmrw_night.black,
    line_highlight    = tmrw_night.dark_gray,
    gutter_foreground = tmrw_night.silver,
    gutter_background = tmrw_night.dark_gray,
    gutter_divider    = tmrw_night.gray,
    caret             = tmrw_night.silver,
    selection         = tmrw_night.gray,
    word_highlight    = tmrw_night.dark_gray,
        
    -- { foreground color, background color, font style }
    keyword      = { tmrw_night.purple, nil, 0 },
    storageType  = { tmrw_night.purple, nil, 0 },
    directive    = { tmrw_night.red,    nil, 0 },
    comment      = { tmrw_night.silver, nil, 0 },
    string       = { tmrw_night.green,  nil, 0 },
    number       = { tmrw_night.orange, nil, 0 },
    ["function"] = { tmrw_night.blue,   nil, 0 },
    method       = { tmrw_night.blue,   nil, 0 },
    library      = { tmrw_night.yellow, nil, 0 },
    operator     = { tmrw_night.aqua,   nil, 0 },
    notfound     = { tmrw_night.white,  nil, 0 },
    bracket      = { tmrw_night.white,  nil, 0 },
    userfunction = { tmrw_night.aqua,   nil, 0 },
    constant     = { tmrw_night.orange, nil, 0 },
    identifier   = { tmrw_night.white,  nil, 0 }

})
