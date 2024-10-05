-- Custom Options
-- vim.o.softtabstop = 4
vim.o.shiftwidth = 0
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
vim.o.ignorecase = true
vim.o.smartcase = true

--Lazy
require("config.lazy")
vim.keymap.set("n", '<leader>lu', ":Lazy update<CR>")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "[F]ind [R]ecent" })

--Neotree

vim.keymap.set("n", "<leader>e", function()
	require("neo-tree.command").execute({ reveal = true, toggle = true })
end, {})
vim.keymap.set("n", "<leader>cd", ":Neotree dir=", {})
vim.keymap.set("n", "<leader>gs", ":Neotree reveal git_status<CR>", {})

-- Splits
vim.keymap.set("n", "<leader>vs", ":vs<CR>")
vim.keymap.set("n", "<leader>hs", ":spl<CR>")
vim.keymap.set({"n", "i", "v"}, "<C-h>", ":wincmd h<CR>")
vim.keymap.set({"n", "i", "v"}, "<C-j>", ":wincmd j<CR>")
vim.keymap.set({"n", "i", "v"}, "<C-k>", ":wincmd k<CR>")
vim.keymap.set({"n", "i", "v"}, "<C-l>", ":wincmd l<CR>")

--MISC
vim.keymap.set("n", "<leader>oe", ":Neotree dir=~/.config/home-manager/<CR> ")
vim.keymap.set("n", "<leader>q", ":q!<CR>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>ww", ":w<CR>")
