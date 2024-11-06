local plugin_specs = {

    -- colorscheme
    {
        "rebelot/kanagawa.nvim",
        -- make sure we load this during startup if it is your main colorscheme
        lazy = false,
        -- make sure to load this before all the other start plugins
        priority = 1000
    },

    -- auto-complition engine
    {
        "iguanacucumber/magazine.nvim",
        name = "nvim-cmp",
        -- event = 'InsertEnter',
        event = "VeryLazy",
        dependencies = {
          "hrsh7th/cmp-nvim-lsp",
          "onsails/lspkind-nvim",
          "hrsh7th/cmp-path",
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-omni",
          "quangnguyen30192/cmp-nvim-ultisnips",
        },
        config = function()
          require("config.nvim-cmp")
        end,
    }
}
require("lazy").setup({
    {
        -- autocompletion
        "hrsh7th/nvim-cmp",
    },
    {
        "rebelot/kanagawa.nvim",
        -- make sure we load this during startup if it is your main colorscheme
        lazy = false,
        -- make sure to load this before all the other start plugins
        priority = 1000
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
		opts = {},
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
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
		keys = {
			{"<leader>e", "<cmd>Neotree<cr>", "Explorer"},
		},
	},
	{
		"folke/which-key.nvim",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = '0.1.6',
		dependencies = { "nvim-lua/plenary.nvim" }
	},
})
