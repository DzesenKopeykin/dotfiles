local which_key = require("which-key")

which_key.add({
    { "<leader>u", group = "Utils" },
    { "<leader>ul", "<cmd>LoremIpsum words 42 10<cr>", desc = "LoremIpsum" },
})
