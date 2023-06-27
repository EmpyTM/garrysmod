include("client/starfall_themes/torgb.lua")

SF.Editor.Themes.AddTheme("tokyo_night", {

    Name = "Tokyo Night",

    background        = to_rgb '#1a1b26',
    line_highlight    = to_rgb '#1e202e',
    gutter_foreground = to_rgb '#fff',
    gutter_background = to_rgb '#1a1b26',
    gutter_divider    = to_rgb '#fff',
    caret             = to_rgb '#fff',
    selection         = to_rgb '#515c7e40',
    word_highlight    = to_rgb '#515c7e44',

    -- { foreground color, background color, font style }
    keyword      = { to_rgb '#bb9af7', nil, 0 },
    storageType  = { to_rgb '#bb9af7', nil, 0 },
    directive    = { to_rgb '#89ddff', nil, 0 },
    comment      = { to_rgb '#5a638c', nil, 0 },
    string       = { to_rgb '#9ece6a', nil, 0 },
    number       = { to_rgb '#ff9e64', nil, 0 },
    ['function'] = { to_rgb '#7aa2f7', nil, 0 },
    method       = { to_rgb '#7aa2f7', nil, 0 },
    library      = { to_rgb '#fff',    nil, 0 },
    operator     = { to_rgb '#fff',    nil, 0 },
    notfound     = { to_rgb '#fff',    nil, 0 },
    bracket      = { to_rgb '#fff',    nil, 0 },
    userfunction = { to_rgb '#fff',    nil, 0 },
    constant     = { to_rgb '#ff9e64', nil, 0 },
    identifier   = { to_rgb '#c0caf5', nil, 0 }

})
