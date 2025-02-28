return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
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
        blink_cmp = true,
      },
      color_overrides = {
        latte = {
          -- base = "#F5F0E6",
          base = "#F6F8ED", -- 主背景色
          mantle = "#DDDFD5", -- 侧边栏/状态栏背景
          crust = "#E0D8CC", -- 浮动窗口/弹层背景
        },
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
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      styles = {
        keywords = { italic = false },
      },
      -- https://github.com/catppuccin/nvim/blob/7ab1a6ec70a664ecb95d84669efc20aaf4f4ed1b/lua/catppuccin/groups/integrations/treesitter.lua#L26
      -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
      on_highlights = function(hl, colors)
        hl["@module"] = { italic = true, fg = colors.magenta }
        -- hl["@keyword.conditional"] = { italic = true }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- set colorschema
      -- colorscheme = "tokyonight",
      colorscheme = "catppuccin",
    },
  },
}
