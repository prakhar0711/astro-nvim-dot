return {
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    "baliestri/aura-theme",
    name = "aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin) vim.opt.rtp:append(plugin.dir .. "/packages/neovim") end,
  },
  {
    "tanvirtin/monokai.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      palette = {
        name = "monokai",
        base1 = "#272a30",
        base2 = "#26292C",
        base3 = "#2E323C",
        base4 = "#333842",
        base5 = "#4d5154",
        base6 = "#9ca0a4",
        base7 = "#b1b1b1",
        border = "#a1b5b1",
        brown = "#504945",
        white = "#f8f8f0",
        grey = "#8F908A",
        black = "#000000",
        pink = "#991746",
        green = "#a6e22e",
        aqua = "#66d9ef",
        yellow = "#e6db74",
        orange = "#fd971f",
        purple = "#ae81ff",
        red = "#8a3347",
        diff_add = "#3d5213",
        diff_remove = "#4a0f23",
        diff_change = "#27406b",
        diff_text = "#23324d",
      },
      italics = false,
    },
    config = function(_, opts)
      require("monokai").setup(opts)
      vim.cmd "colorscheme monokai"
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      terminalColors = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      NormalFloat = { bg = "none" },
      FloatBorder = { bg = "none" },
      FloatTitle = { bg = "none" },
    },
  },
}
