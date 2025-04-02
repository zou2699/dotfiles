return {
  {
    "LazyVim/LazyVim",
    opts = function()
      local function get_scheme()
        local scheme = "gruvbox"
        if vim.g.neovide then
          local hour = tonumber(os.date("%H"))
          if hour >= 8 and hour < 19 then
            scheme = "github_light"
            vim.g.neovide_theme = "light"
          end
        end

        return scheme
      end

      return {
        colorscheme = get_scheme(),
      }
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      overrides = {
        ["@lsp.type.namespace"] = { italic = true },
      },
    },
  },
  {
    "zou2699/github-nvim-theme",
    lazy = true,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        options = {
          styles = {
            comments = "italic",
          },
        },
        groups = {
          github_light = {
            -- https://github.com/projekt0n/github-nvim-theme/blob/main/lua/github-theme/group/modules/lsp_semantic_tokens.lua
            ["@lsp.type.namespace"] = { style = "italic" },
            ["@lsp.type.parameter"] = { fg = "#866D00" },
          },
        },
      })
    end,
  },
}
