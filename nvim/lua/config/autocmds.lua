-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function augroup(name)
   return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end
local numbertoggle = vim.api.nvim_create_augroup("numbertoggle", {}) 
 

vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "CmdlineLeave", "WinEnter" }, {
   pattern = "*",
   group = numbertoggle,
   callback = function()
      if vim.o.nu and vim.api.nvim_get_mode().mode ~= "i" then
         vim.opt.relativenumber = true
      end
   end,
})

vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "CmdlineEnter", "WinLeave" }, {
   pattern = "*",
   group = numbertoggle,
   callback = function()
      if vim.o.nu then
         vim.opt.relativenumber = false
         -- vim.cmd "redraw"
      end
   end,
})

-- wrap and check for spell in text filetypes
vim.api.nvim_create_autocmd("FileType", {
   group = augroup("wrap_spell"),
   pattern = { "gitcommit", "markdown" },
   callback = function()
     vim.opt_local.wrap = true
     vim.opt_local.spell = false -- 覆盖默认的 true
   end,
 })