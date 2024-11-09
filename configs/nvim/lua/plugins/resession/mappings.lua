local resession = require("resession")
local which_key = require("which-key")

which_key.add({
    { "<leader>s", group = "Session" },
    { "<leader>ss", resession.save, desc = "Save" },
    { "<leader>sl", resession.load, desc = "Load" },
    { "<leader>sd", resession.deleta, desc = "Delete" },
})
