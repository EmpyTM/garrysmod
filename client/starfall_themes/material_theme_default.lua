local mat_tm = {
	white		= Color(255, 255, 255),
	gray		= Color(85, 102, 119),
	black 		= Color(0, 0, 0),
	red 		= Color(238, 119, 119),
	orange 		= Color(255, 136, 102),
	yellow 		= Color(255, 204, 102),
	green		= Color(187, 238, 136),
	cyan 		= Color(136, 221, 255),
	blue 		= Color(136, 170, 255),
	paleblue 	= Color(136, 204, 221),
	purple 		= Color(204, 153, 238),
	brown		= Color(153, 102, 85),
	pink		= Color(255, 153, 170),
	violet		= Color(187, 136, 187)
}

SF.Editor.Themes.AddTheme("material_theme_default", {

    Name = "Material Theme (Default)",

    background        = Color(34, 51, 51),
    line_highlight    = Color(0, 0, 0),
    gutter_foreground = Color(102, 119, 136),
    gutter_background = Color(34, 51, 51),
    gutter_divider    = Color(34, 51, 51),
    caret             = Color(255, 204, 0),
    selection         = Color(136, 204, 204),
    word_highlight    = Color(255, 204, 0),

    -- { foreground color, background color, font style }
    keyword      = { mat_tm.cyan,       nil, 0 },
    storageType  = { mat_tm.purple,     nil, 0 },
    directive    = { mat_tm.brown,      nil, 0 },
    comment      = { mat_tm.gray,       nil, 0 },
    string       = { mat_tm.green,      nil, 0 },
    number       = { mat_tm.orange,     nil, 0 },
    ["function"] = { mat_tm.blue,       nil, 0 },
    method       = { mat_tm.red,        nil, 0 },
    library      = { mat_tm.yellow,     nil, 0 },
    operator     = { mat_tm.paleblue,   nil, 0 },
    notfound     = { mat_tm.paleblue,   nil, 0 },
    bracket      = { mat_tm.paleblue,   nil, 0 },
    userfunction = { mat_tm.pink,       nil, 0 },
    constant     = { mat_tm.orange,     nil, 0 },
    identifier   = { mat_tm.white,      nil, 0 }

})
