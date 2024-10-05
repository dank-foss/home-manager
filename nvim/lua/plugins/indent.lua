return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local def_style = {
			{ fg = "#79865E" },
			{ fg = "#AB572F" },
		}
		require("hlchunk").setup({
			chunk = { enable = true, style = def_style },
			indent = { enable = true },
			line_num = { enable = true },
		})
	end,
}
