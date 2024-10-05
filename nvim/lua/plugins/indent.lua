return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local def_style = {
			{ fg = "#AB572F" },
			{ fg = "#D14A18" },
		}
		require("hlchunk").setup({
			chunk = { enable = true, style = def_style },
			indent = { enable = true, style = def_style },
			line_num = { enable = true, style = def_style },
		})
	end,
}
