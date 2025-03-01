-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- H L
local opts = { noremap = true, silent = true }
keymap.set("n", "H", "^", opts)
keymap.set("n", "L", "$", opts)
keymap.set("n", "dL", "d$", opts)
keymap.set("n", "dH", "d^", opts)
keymap.set("n", "cL", "c$", opts)
keymap.set("n", "cH", "c^", opts)
keymap.set("n", "yL", "y$", opts)
keymap.set("n", "yH", "y^", opts)

-- 命令行模式映射
keymap.set("c", "<c-a>", "<Home>", opts)
keymap.set("c", "<c-e>", "<End>", opts)
keymap.set("c", "<c-b>", "<Left>", opts)
keymap.set("c", "<c-f>", "<Right>",opts)


-- 插入模式映射
keymap.set("i", "<c-h>", "<Left>", opts)
keymap.set("i", "<c-j>", "<c-o>gj", opts)
keymap.set("i", "<c-k>", "<c-o>gk", opts)
keymap.set("i", "<c-l>", "<Right>", opts)
keymap.set("i", "<c-a>", "<Home>", opts)
keymap.set("i", "<c-e>", "<End>", opts)
keymap.set("i", "<c-b>", "<Left>", opts)
keymap.set("i", "<c-f>", "<Right>", opts)