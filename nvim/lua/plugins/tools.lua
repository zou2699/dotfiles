return {
  {
    "max397574/better-escape.nvim",
    -- event = "InsertEnter",
    -- opts = {
    --   mapping = { "jk" },
    -- },
    config = function()
      require("better_escape").setup()
    end,
  },
  -- { "tpope/vim-surround" },
  { "akinsho/toggleterm.nvim", version = "*", config = true },

  -- override keys
  {
    "nvim-pack/nvim-spectre",
    keys = {
      {
        "<leader>sR",
        function()
          require("spectre").open()
        end,
        desc = "Replace in files (Spectre)",
      },
    },
  },

  -- override noice
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.command_palette = false
      opts.cmdline = {
        view = "cmdline",
        format = {
          search_down = {
            icon = " ",
            view = "cmdline",
          },
          search_up = {
            icon = " ",
            view = "cmdline",
          },
        },
      }
    end,
  },
}
