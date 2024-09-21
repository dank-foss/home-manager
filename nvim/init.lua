-- Custom Options
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false
vim.o.clipboard = "unnamedplus"
vim.o.foldmethod = "manual"
vim.o.number = true
vim.o.relativenumber = true
vim.o.laststatus = 3 --sets border for splits
vim.o.scrolloff = 5
vim.o.spr = true
vim.o.tabstop = 4
vim.o.wrap = false
--
--Lazy
require("config.lazy")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })
vim.keymap.set("n", "<leader>fr", ":Telescope frecency<CR><BS>", { desc = "[F]ind [R]ecent" })

--Neotree

is_neotree_up = false

function give_state()
	if is_neotree_up == false then
		is_neotree_up = true
		return ":Neotree filesystem reveal left<CR>"
	else
		is_neotree_up = false
		return "Neotree close <CR>"
	end
end

vim.keymap.set("n", "<leader>fe", give_state, {}) --":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<leader>fd", ":Neotree dir=", {})
vim.keymap.set("n", "<leader>fc", ":Neotree close<CR>", {})
vim.keymap.set("n", "<leader>gs", ":Neotree reveal git_status<CR>", {})

-- Splits
vim.keymap.set("n", "<leader>vs", ":vs<CR>")
vim.keymap.set("n", "<leader>hs", ":spl<CR>")

--Gitsigns
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>glb", ":Gitsigns toggle_current_line_blame<CR>")

--MISC
vim.keymap.set("n", "<leader>oe", ":e ~/.config/home-manager/")
