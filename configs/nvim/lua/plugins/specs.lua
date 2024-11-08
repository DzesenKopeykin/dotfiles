require("plugins.options.lualine")

local plugin_specs = {
    {
        "rebelot/kanagawa.nvim",
        -- make sure we load this during startup if it is your main colorscheme
        lazy = false,
        -- make sure to load this before all the other start plugins
        priority = 1000
    },
    { 
        "echasnovski/mini.icons",
        version = false
    },
	{
		"smoka7/hop.nvim",
		version = "v2",
		opts = {
			keys = "asdfghjklqwertyuiopzxcvbnm",
		}
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = lualine_options,
	},
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		opts = {},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
		opts = {
			window = {
				position = "float",
			},
		},
	},
	{
		"folke/which-key.nvim",
        lazy = true
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = '0.1.6',
		dependencies = { "nvim-lua/plenary.nvim" }
	},
}

require("lazy").setup(plugin_specs)
