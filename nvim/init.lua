vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = false
vim.o.clipboard = "unnamedplus"
vim.o.foldmethod = "manual"
vim.o.number = true
vim.o.relativenumber = true

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
    {'uZer/pywal16.nvim', 
    name = 'pywal16',
    priority = 1000,
    config = true}
  },
  -- Configure any other settings here. See the documentation for more details.
--  install = { colorscheme = { "habamax" } },   -- colorscheme that will be used when installing plugins.
  checker = { enabled = true },   -- automatically check for plugin updates
})
