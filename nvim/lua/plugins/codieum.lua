return {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	config = function()
		vim.g.codeium_no_map_tab = 1
		vim.keymap.set("n", "l", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })
	end,
}
