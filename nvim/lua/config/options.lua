-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.background = "light"

local g = vim.g
local opt = vim.opt

g.mapleader = ","

-- opt.wildmenu = true
-- opt.wildmode = "longest:list,full"

-- set gui font
if g.neovide then
  opt.guifont = "SauceCodePro Nerd Font:h13"
end
