return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.operators").setup()
		require("mini.pairs").setup()
		require("mini.bracketed").setup()
		require("mini.move").setup()
		require("mini.ai").setup()
		require("mini.surround").setup()
		require("mini.comment").setup()
		-- diff, git
	end,
}
