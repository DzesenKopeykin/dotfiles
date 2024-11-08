local _colors = {
    blue   = "#80a0ff",
    cyan   = "#79dac8",
    black  = "#080808",
    white  = "#c6c6c6",
    red    = "#ff5189",
    violet = "#d183e8",
    grey   = "#303030",
}

local _theme = {
    normal = {
        a = { fg = _colors.black, bg = _colors.violet },
        b = { fg = _colors.white, bg = _colors.grey },
        c = { fg = _colors.white },
    },

    insert = { a = { fg = _colors.black, bg = _colors.blue } },
    visual = { a = { fg = _colors.black, bg = _colors.cyan } },
    replace = { a = { fg = _colors.black, bg = _colors.red } },

    inactive = {
        a = { fg = _colors.white, bg = _colors.black },
        b = { fg = _colors.white, bg = _colors.black },
        c = { fg = _colors.white },
    },
}

lualine_options = {
    options = {
        theme = _theme,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
    },
    sections = {
        lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
        lualine_b = { "branch", "diff", "diagnostic" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = {},
        lualine_y = { "encoding", "fileformat", "filetype", "progress" },
        lualine_z = {
            { "location", separator = { right = "" }, left_padding = 2 },
        },
    },
    inactive_sections = {
        lualine_a = { { "filename", path = 2 } },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
    },
    tabline = {},
    extensions = {},
}
