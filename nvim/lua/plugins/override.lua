return {
    -- Remove keymaps from the LSP config
    {
        "neovim/nvim-lspconfig",
        -- LSP keymaps
        init = function()
            local keys = require("lazyvim.plugins.lsp.keymaps").get()
            -- stylua: ignore start
            keys[#keys + 1] = { "<C-k>", false, mode = "i" }
            -- stylua: ignore end
        end,
    },

    -- disable placeHolders
    {
        "neovim/nvim-lspconfig",
        opts = {
          servers = {
            gopls = {
              settings = {
                gopls = {
                  usePlaceholders = false,
                },
              },
            },
          },
        },
    },
}