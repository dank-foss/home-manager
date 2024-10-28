return {
	{
		"uZer/pywal16.nvim",
		name = "pywal16",
		priority = 1000,
		config = function()
			-- vim.cmd([[colorscheme pywal16]])
		end,
	},
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			require("everforest").setup({
				-- Your config here
			})
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
			})
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}
