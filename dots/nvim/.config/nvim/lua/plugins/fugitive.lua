return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>ga", ":Git add .<CR>")
		vim.keymap.set("n", "<leader>gc", ":Git ac ''")
		vim.keymap.set("n", "<leader>gmc", ":Git commit -m ''")
		vim.keymap.set("n", "<leader>gid", ":Git diff<CR>")
	end,
}
