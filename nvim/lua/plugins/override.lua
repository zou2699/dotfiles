return {
  -- Remove keymaps from the LSP config
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      --  ignore <C-k>
      keys[#keys + 1] = { "<C-k>", false, mode = "i" }
    end,
  },

  -- update explorer keys
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            win = {
              list = {
                keys = {
                  ["o"] = false,
                  ["O"] = "explorer_open",
                },
              },
            },
          },
        },
      },
    },
  },

  -- disable ghost_text in cmp
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        ghost_text = {
          enabled = false,
        },
      },
    },
  },

  -- disable go placeHolders
  -- {
  --     "neovim/nvim-lspconfig",
  --     opts = {
  --       servers = {
  --         gopls = {
  --           settings = {
  --             gopls = {
  --               usePlaceholders = false,
  --             },
  --           },
  --         },
  --       },
  --     },
  -- },
}
