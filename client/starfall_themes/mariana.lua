local mariana = {
    black           = Color(  0,   0,   0),
    blue            = Color(102, 153, 204),
    blue_vibrant    = Color( 92, 153, 214),
    blue2           = Color( 89, 102, 115),
    blue3           = Color( 48,  56,  65),
    blue4           = Color(100, 115, 130),
    blue5           = Color( 95, 180, 180),
    blue6           = Color(166, 172, 185),
    green           = Color(153, 199, 148),
    gray            = Color( 51,  51,  51),
    orange          = Color(249, 174,  88),
    orange2         = Color(238, 147,  43),
    orange3         = Color(250, 199,  97),
    pink            = Color(198, 149, 198),
    red             = Color(236,  95, 102),
    red2            = Color(249, 123,  88),
    white           = Color(255, 255, 255),
    white2          = Color(247, 247, 247),
    white3          = Color(216, 222, 233)
}

SF.Editor.Themes.AddTheme("mariana", {
        
    Name = "Mariana",
        
    background        = mariana.blue3,
    line_highlight    = mariana.blue3,
    gutter_foreground = mariana.blue4,
    gutter_background = mariana.blue3,
    gutter_divider    = mariana.blue3,
    caret             = mariana.orange,
    selection         = mariana.blue2,
    word_highlight    = mariana.blue5,
        
    -- { foreground color, background color, font style }
    keyword      = { mariana.pink,      nil, 0 },
    storageType  = { mariana.pink,      nil, 0 },
    directive    = { mariana.blue6,     nil, 0 },
    comment      = { mariana.blue6,     nil, 0 },
    string       = { mariana.green,     nil, 0 },
    number       = { mariana.orange,    nil, 0 },
    ["function"] = { mariana.blue,      nil, 0 },
    method       = { mariana.blue,      nil, 0 },
    library      = { mariana.blue,      nil, 0 },
    operator     = { mariana.red2,      nil, 0 },
    notfound     = { mariana.white2,    nil, 0 },
    bracket      = { mariana.white,     nil, 0 },
    userfunction = { mariana.blue5,     nil, 0 },
    constant     = { mariana.red,       nil, 0 },
    identifier   = { mariana.white,     nil, 0 }
        
})
