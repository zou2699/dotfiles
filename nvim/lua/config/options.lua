-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.background = "light"

local g = vim.g
local opt = vim.opt

g.mapleader = ","

-- opt.tabstop = 4 --Number of spaces tabs count for
-- opt.shiftwidth = 4 -- Size of an indent
-- opt.wildmenu = true
-- opt.wildmode = "longest:list,full"

-- set gui font
if g.neovide then
  opt.guifont = "SauceCodePro Nerd Font:h13"
end
