-- External toools:
-- ripgrep
-- fd

require("globals") 
require("options")
require("plugins")
require("config.lazy")

vim.cmd("colorscheme nordic")

vim.keymap.set("n", "f", function() require("hop").hint_words({current_line_only=true}) end)
vim.keymap.set("n", "F", function() require("hop").hint_words() end)
vim.keymap.set("v", "f", function() require("hop").hint_words({current_line_only=true}) end)
vim.keymap.set("v", "F", function() require("hop").hint_words() end)
vim.keymap.set("n", "<C-l>", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<C-h>", "<cmd>BufferLineCyclePrev<cr>")
vim.keymap.set("n", "<C-x>", "<cmd>bdelete<cr>")

local on_attach = function(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lspomnifunc")

	local bufopts = { noremap=true, silent=true, buffer=bufnr }
	bufopts["desc"] = "File"
	vim.keymap.set("n", "<leader>ff", function()
		local current_file = vim.api.nvim_buf_get_name(0)
		vim.api.nvim_command("silent !ruff check --select I --fix " .. current_file)
		vim.api.nvim_command("silent !ruff format " .. current_file)
		vim.lsp.buf.format { async = true }
	end, bufopts)
end

require("lspconfig").ruff.setup{
	on_attach = on_attach,
}

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>tf", builtin.find_files, { desc="Find File"})
vim.keymap.set("n", "<leader>tg", builtin.live_grep, { desc="Live Grep"})
vim.keymap.set("n", "<leader>tb", builtin.buffers, { desc="Buffers"})
vim.keymap.set("n", "<leader>th", builtin.help_tags, { desc="Help Tags"})

local which_key = require("which-key")
which_key.register({
	t = {
		name = "Telescope",
	},
	f = {
		name = "Format",
	},
}, { prefix = "<leader>" })

vim.api.nvim_create_autocmd(
    "BufEnter",
    {pattern = {"*.html", "*.htmldjango"}, command = "setlocal expandtab"}
)
vim.api.nvim_create_autocmd(
    "BufEnter",
    {pattern = {"*.html", "*.htmldjango"}, command = "setlocal tabstop=2"}
)
vim.api.nvim_create_autocmd(
    "BufEnter",
    {pattern = {"*.html", "*.htmldjango"}, command = "setlocal softtabstop=2"}
)
vim.api.nvim_create_autocmd(
    "BufEnter",
    {pattern = {"*.html", "*.htmldjango"}, command = "setlocal shiftwidth=2"}
)
vim.api.nvim_create_autocmd(
    "BufEnter",
    {pattern = {"*.html", "*.htmldjango"}, command = "echo 'Entering a html file'"}
)
