return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
  },
  {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load({ paths = "./snippets" })
    end,
  },

  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     diagnostics = {
  --       virtual_text = true,
  --       update_in_insert = true,
  --     },
  --   },
  -- },
}
