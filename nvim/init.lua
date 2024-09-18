-- Custom Options
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false
vim.o.clipboard = "unnamedplus"
vim.o.foldmethod = "manual"
vim.o.number = true
vim.o.relativenumber = true
vim.o.laststatus=3 --sets border for splits

require("config.lazy")

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", '<leader>ff', builtin.find_files, {})
vim.keymap.set("n", '<leader>fg', builtin.live_grep, {})
vim.keymap.set("n", '<leader>fb', builtin.buffers, {})

--Neotree
vim.keymap.set("n", '<leader>fe', ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", '<leader>dc', ":Neotree dir=", {})
vim.keymap.set("n", '<leader>fc', ":Neotree close<CR>", {})
vim.keymap.set("n", '<leader>gs', ":Neotree reveal git_status<CR>", {})

-- Splits
vim.keymap.set("n", "<leader>vs", ":vs<CR>")
vim.keymap.set("n", "<leader>hs", ":spl<CR>")
