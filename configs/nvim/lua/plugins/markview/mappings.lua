local which_key = require("which-key")

which_key.add({
    { "<leader>u", group = "Utils" },
    { "<leader>um", "<cmd>Markview<cr>", desc = "Markdown view" },
})
