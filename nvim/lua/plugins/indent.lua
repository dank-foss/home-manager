return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local def_style = {
			{ fg = "#AB572F" },
			{ fg = "#a39e8a" },
		}
		require("hlchunk").setup({
			chunk = { enable = true, style = def_style },
			indent = { enable = true },
			line_num = { enable = true },
		})
	end,
}
