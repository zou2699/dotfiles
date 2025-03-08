-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- H L
local opts = { noremap = true, silent = true }
-- keymap.set("n", "H", "^", opts)
-- keymap.set("n", "L", "$", opts)
-- keymap.set("n", "dL", "d$", opts)
-- keymap.set("n", "dH", "d^", opts)
-- keymap.set("n", "cL", "c$", opts)
-- keymap.set("n", "cH", "c^", opts)
-- keymap.set("n", "yL", "y$", opts)
-- keymap.set("n", "yH", "y^", opts)

-- undo behavior
-- https://github.com/yutkat/dotfiles/blob/main/.config/nvim/lua/rc/mappings.lua
-- <C-g>u 表示在这个位置插入一个撤销断点 undo breakpoint
keymap.set("i", "<BS>", "<C-g>u<BS>", opts) -- Backspace
keymap.set("i", "<CR>", "<C-g>u<CR>", opts)
keymap.set("i", "<DEL>", "<C-g>u<DEL>", opts)
keymap.set("i", "<C-w>", "<C-g>u<C-w>", opts)
keymap.set("i", "<C-u>", "<C-g>u<C-u>", { noremap = true, silent = true })
keymap.set("i", "<Space>", "<C-g>u<Space>", { noremap = true, silent = true })

--- Emacs style
keymap.set("c", "<C-a>", "<Home>", opts)
keymap.set("c", "<C-e>", "<End>", opts)
keymap.set("c", "<C-f>", "<right>", opts)
keymap.set("c", "<C-b>", "<left>", opts)
keymap.set("c", "<C-d>", "<DEL>", opts)
-- keymap.set('c', '<C-h>', '<BS>', {noremap = true, silent = true})
keymap.set("c", "<C-s>", "<BS>", opts)
keymap.set("i", "<C-a>", "<Home>", opts)
keymap.set("i", "<C-e>", "<End>", opts)
keymap.set("i", "<C-f>", "<right>", opts)
keymap.set("i", "<C-b>", "<left>", opts)
keymap.set("i", "<C-h>", "<left>", opts)
keymap.set("i", "<C-l>", "<right>", opts)
keymap.set("i", "<C-k>", "<up>", opts)
keymap.set("i", "<C-j>", "<down>", opts)
keymap.set("i", "<c-j>", "<c-o>gj", opts)
keymap.set("i", "<c-k>", "<c-o>gk", opts)
