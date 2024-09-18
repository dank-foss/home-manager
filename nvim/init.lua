-- Custom Options
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false
vim.o.clipboard = "unnamedplus"
vim.o.foldmethod = "manual"
vim.o.number = true
vim.o.relativenumber = true
vim.o.laststatus=3 --sets border for splits

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end

end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)


vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- add your plugins here
    {
	'uZer/pywal16.nvim', 
    	name = 'pywal16',
    	priority = 1000,
    	config = function()
    	    vim.cmd([[colorscheme pywal16]])
    	end,
    },

    {
	'nvim-telescope/telescope.nvim',
    	tag = '0.1.8',
    	dependencies = {'nvim-lua/plenary.nvim'}
    },

    {
	"nvim-treesitter/nvim-treesitter",
    	build = ":TSUpdate",
    	config = function () 
    	  local configs = require("nvim-treesitter.configs")
    	
    	  configs.setup({
    	      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
    	      sync_install = false,
    	      highlight = { enable = true },
    	      indent = { enable = true },  
    	    })
    	end,
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },

    {
	"rbong/vim-flog",
	lazy = true,
	cmd = { "Flog", "Flogsplit", "Floggit" },
	dependencies = {
	  "tpope/vim-fugitive",
	},
    },

},
  -- Configure any other settings here. See the documentation for more details.
  install = { colorscheme = {"vim"} },   -- colorscheme that will be used when installing plugins.

  checker = { enabled = true },   -- automatically check for plugin updates
})


-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", '<leader>ff', builtin.find_files, {})
vim.keymap.set("n", '<leader>fg', builtin.live_grep, {})
vim.keymap.set("n", '<leader>fb', builtin.buffers, {})

--Neotree
vim.keymap.set("n", '<leader>fe', ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", '<leader>fc', ":Neotree close<CR>", {})
vim.keymap.set("n", '<leader>gs', ":Neotree reveal git_status<CR>", {})

-- Splits
vim.keymap.set("n", "<leader>vs", ":vs<CR>")
vim.keymap.set("n", "<leader>hs", ":spl<CR>")
