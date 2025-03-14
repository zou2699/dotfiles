return {
  {
    "LazyVim/LazyVim",
    opts = function()
      -- 根据背景选择主题
      local scheme = vim.g.neovide and "github_light" or "gruvbox"
      return {
        colorscheme = scheme,
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
    "projekt0n/github-nvim-theme",
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
            -- ['@module'] = {style = 'italic'  },
            -- ['@module.go'] = {style = 'italic'  },
            -- https://github.com/projekt0n/github-nvim-theme/blob/main/lua/github-theme/group/modules/lsp_semantic_tokens.lua
            ["@lsp.type.namespace"] = { style = "italic" },
            -- ['@lsp.type.namespace'] = { fg = '#228B22'  },
          },
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    priority = 1000,
    name = "catppuccin",
    opts = {
      term_colors = true,
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        fzf = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
    specs = {
      {
        "akinsho/bufferline.nvim",
        optional = true,
        opts = function(_, opts)
          if (vim.g.colors_name or ""):find("catppuccin") then
            opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
          end
        end,
      },
    },
  },
}
