-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- how to delele default keymap https://github.com/LazyVim/LazyVim/issues/1075
local keymap = vim.keymap

-- neovide
if vim.g.neovide then
  keymap.set("n", "<D-s>", ":w<CR>") -- Save
  keymap.set("v", "<D-c>", '"+y') -- Copy
  keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end

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

-- lsp
-- keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto implementation" })
vim.keymap.del("n", "<C-k>")
-- delete lazyterm keymap
keymap.del("n", "<leader>ft")
keymap.del("n", "<c-_>")

-- general
keymap.set("n", ";", ":", { desc = "Enter command mode", nowait = true })

-- Resize window using <ctrl> arrow keys
keymap.set("n", "<S-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
keymap.set("n", "<S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
keymap.set("n", "<S-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap.set("n", "<S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- term
keymap.set("n", "<c-/>", "<cmd>ToggleTerm<cr>")
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>")
keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>")
keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>")
keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>")

-- telescope general
keymap.set("n", "<leader>sr", "<cmd>Telescope resume<cr>", { desc = "Resume" })
-- keymap.set("n", "<leader>lds", "<cmd>Telescope lsp_document_symbols<cr>")
-- keymap.set("n", "<leader>tgf", "<cmd>Telescope lsp_references<cr>")
-- keymap.set("n", "<leader>cbf", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
-- telescope git commands
-- keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
-- keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
-- keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- lsp saga
-- keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
-- keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")
-- keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>") -- jump to previous diagnostic in buffer
-- keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- hop
keymap.set("n", "<leader>hw", ":HopWord<cr>")
keymap.set("n", "<leader>hww", ":HopWordMW<cr>")
keymap.set("n", "<leader>hc", ":HopChar1<cr>")
keymap.set("n", "<leader>hcw", ":HopChar1MW<cr>")

-- use emacs shortcut in INSERT mode
-- keymap.set("i", "<c-f>", "<Right>")
-- keymap.set("i", "<c-b>", "<Left>")
-- keymap.set("i", "<c-a>", "<Home>")
-- keymap.set("i", "<c-e>", "<End>")

-- neotree
keymap.set("n", "<leader>o", function()
  if vim.bo.filetype == "neo-tree" then
    vim.cmd.wincmd("p")
  else
    vim.cmd.Neotree("focus")
  end
end)


-- 2025
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