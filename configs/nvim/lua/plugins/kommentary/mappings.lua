local which_key = require("which-key")

which_key.add({
    { 
        mode = { "n" },
        { "<leader>u", group = "Utils" },
        { "<leader>uc", "<Plug>kommentary_line_default", desc = "Comment" },
    },
    { 
        mode = { "x" },
        { "<leader>u", group = "Utils" },
        { "<leader>uc", "<Plug>kommentary_visual_default", desc = "Comment" },
    },
})
