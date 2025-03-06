-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.tabstop = 4 -- Number of spaces tabs count for
opt.shiftwidth = 4 -- Size of an indent
opt.expandtab = false -- Use tabs instead of spaces
-- opt.wrap = true
opt.showbreak= '↪' -- character to show when line is broken


-- OSC 52
-- local function paste()
--     return {
--       vim.fn.split(vim.fn.getreg(""), "\n"),
--       vim.fn.getregtype(""),
--     }
--   end
  
-- vim.g.clipboard = {
-- name = "OSC 52",
-- copy = {
--     ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
--     ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
-- },
-- paste = {
--     ["+"] = paste,
--     ["*"] = paste,
-- },
-- }