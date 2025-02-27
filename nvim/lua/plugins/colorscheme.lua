return {
  { 
    "ellisonleao/gruvbox.nvim",
    lazy = true,
  },
  {
    "catppuccin/nvim",
    lazy = true,
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
        hl["@module"] = { italic = true, fg = colors.magenta}
        -- hl["@keyword.conditional"] = { italic = true }
      end
    },
  },
  
  {
    "LazyVim/LazyVim",
    opts = {
      -- set colorschema
      colorscheme = "tokyonight",
      -- colorscheme = "catppuccin",
    },
  },
}
