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
-- lazyvim already add "," "." ";"
-- keymap.set("i", "<BS>", "<C-g>u<BS>", opts) -- Backspace
keymap.set("i", "<CR>", "<CR><C-g>u", opts)
-- keymap.set("i", "<DEL>", "<C-g>u<DEL>", opts)
-- keymap.set("i", "<C-w>", "<C-g>u<C-w>", opts)
-- keymap.set("i", "<C-u>", "<C-g>u<C-u>", { noremap = true, silent = true })
keymap.set("i", "<Space>", "<Space><C-g>u", opts)

-- Emacs style
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

if vim.g.vscode then
  local vscode = require("vscode")
  -- gd: 跳转到定义
  keymap.set("n", "gd", function()
    vscode.call("editor.action.revealDefinition")
  end, { desc = "Go to Definition" })

  -- gr: 查找引用
  keymap.set("n", "gr", function()
    vscode.call("editor.action.goToReferences")
  end, { desc = "Go to References" })

  -- gI: 跳转到实现
  keymap.set("n", "gI", function()
    vscode.call("editor.action.goToImplementation")
  end, { desc = "Go to Implementation" })
  -- gy: 跳转到类型定义
  vim.keymap.set("n", "gy", function()
    vscode.call("editor.action.goToTypeDefinition")
  end, { desc = "Goto Type Definition" })
  -- gD: 跳转到声明
  vim.keymap.set("n", "gD", function()
    vscode.call("editor.action.peekDefinition")
  end, { desc = "Goto Declaration" })
  -- K: 显示悬停信息
  vim.keymap.set("n", "K", function()
    vscode.call("editor.action.showHover")
  end, { desc = "Hover" })
  -- gK: 显示签名帮助（Normal 模式）
  --   vim.keymap.set("n", "gK", function()
  --     vscode.call("editor.action.signatureHelp")
  --   end, { desc = "Signature Help" })
  -- <leader>ca: 代码操作（Normal 和 Visual 模式）
  vim.keymap.set({ "n", "v" }, "<leader>ca", function()
    vscode.call("editor.action.quickFix")
  end, { desc = "Code Action" })

  -- 缓冲区导航
  -- same with H L
  keymap.set("n", "[b", function()
    vscode.call("workbench.action.previousEditor")
  end, { desc = "Previous Buffer" })
  keymap.set("n", "]b", function()
    vscode.call("workbench.action.nextEditor")
  end, { desc = "Next Buffer" })
  keymap.set("n", "<leader>ff", function()
    vscode.call("workbench.action.quickOpen")
  end, { desc = "Find Files" })
  -- 搜索和替换
  -- same with <leader><leader>
  keymap.set("n", "<leader>sg", function()
    vscode.call("workbench.action.findInFiles")
  end, { desc = "Search Grep" })
  keymap.set("n", ":%s", function()
    vscode.call("editor.action.startFindReplaceAction")
  end, { desc = "Replace" })
  -- 诊断导航
  keymap.set("n", "[d", function()
    vscode.call("editor.action.marker.prev")
  end, { desc = "Prev Diagnostic" })
  keymap.set("n", "]d", function()
    vscode.call("editor.action.marker.next")
  end, { desc = "Next Diagnostic" })
  keymap.set("n", "<leader>cd", function()
    vscode.call("editor.action.showHover")
  end, { desc = "Show Diagnostics" })
  -- 调试
  keymap.set("n", "<leader>db", function()
    vscode.call("editor.debug.action.toggleBreakpoint")
  end, { desc = "Toggle Breakpoint" })
  keymap.set("n", "<F5>", function()
    vscode.call("workbench.action.debug.start")
  end, { desc = "Start Debugging" })
  -- 窗口导航
  -- keymap.set("n", "<C-w>h", function() vscode.call("workbench.action.focusLeftGroup") end, { desc = "Focus Left" })
  -- keymap.set("n", "<C-w>j", function() vscode.call("workbench.action.focusBelowGroup") end, { desc = "Focus Below" })
  -- keymap.set("n", "<C-w>k", function() vscode.call("workbench.action.focusAboveGroup") end, { desc = "Focus Above" })
  -- keymap.set("n", "<C-w>l", function() vscode.call("workbench.action.focusRightGroup") end, { desc = "Focus Right" })

  -- same with <c-w>o <c-w>q
  keymap.set("n", "<leader>wo", function()
    vscode.call("workbench.action.closeEditorsInGroup")
  end, { desc = "Close Other Windows" })
  keymap.set("n", "<leader>wq", function()
    vscode.call("workbench.action.closeActiveEditor")
  end, { desc = "Close Current Window" })

  -- keymap.set({ "n", "i" }, "<C-s>", function()
  --   vscode.call("workbench.action.files.save")
  -- end, { desc = "Save File" })

  -- <leader>cf: 格式化代码
  vim.keymap.set("n", "<leader>cf", function()
    vscode.call("editor.action.formatDocument")
  end, { desc = "Format Code" })

  -- show explorer
  keymap.set("n", "<leader>e", function()
    vscode.call("workbench.files.action.showActiveFileInExplorer")
  end, { desc = "toggleSidebarVisibility" })
  
  -- 添加书签的快捷键（例如 <leader>mm）
  keymap.set('n', '<leader>mt', function()
    vim.fn.VSCodeNotify('bookmarks.toggle')
  end, { desc = "Toggle Bookmark" })
  -- 列出所有书签（例如 <leader>ml）
  keymap.set('n', '<leader>mm', function()
      vim.fn.VSCodeNotify('bookmarks.toggleLabeled')
  end, { desc = "Toggle Labeled Bookmarks" })
  -- 删除所有书签（<leader>md）
  keymap.set('n', '<leader>mc', function()
    vim.fn.VSCodeNotify('bookmarks.clear')
  end, { desc = "Clear All Bookmarks" })
  -- 列出所有书签（例如 <leader>ml）
  keymap.set('n', '<leader>ml', function()
    vim.fn.VSCodeNotify('bookmarks.list')
  end, { desc = "List Bookmarks" })
end
