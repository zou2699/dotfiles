-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.tabstop = 4 -- Number of spaces tabs count for
opt.shiftwidth = 4 -- Size of an indent
opt.expandtab = false -- Use tabs instead of spaces
opt.wrap = true
opt.showbreak = "↪" -- character to show when line is broken

-- OSC 52, uncomment if use ssh, nvim work slowly
-- local function paste()
--   return {
--     vim.fn.split(vim.fn.getreg(""), "\n"),
--     vim.fn.getregtype(""),
--   }
-- end
--
-- vim.g.clipboard = {
--   name = "OSC 52",
--   copy = {
--     ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
--     ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
--   },
--   paste = {
--     ["+"] = paste,
--     ["*"] = paste,
--   },
-- }

if vim.g.neovide then
  -- fix cmd-c/cmd-v to copy and paste
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

  -- 光标动画设置
  vim.g.neovide_cursor_animation_length = 0.13 -- 短促的光标动画（30ms）
  vim.g.neovide_cursor_trail_size = 0.1 -- 光标拖尾长度
  -- vim.g.neovide_cursor_vfx_mode = "sonicboom"

  vim.opt.guifont = { "JetBrainsMono Nerd Font", "LXGW WenKai Mono", ":h13" }
  vim.g.neovide_input_macos_option_key_is_meta = "only_left"

  vim.api.nvim_set_current_dir("~/code/")
end
