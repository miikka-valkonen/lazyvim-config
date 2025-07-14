return {
  {
    "metalelf0/black-metal-theme-neovim",
    lazy = false,
    priority = 1000,
    config = function()
      require("black-metal").setup({})
    end,
  },
  {
    "vague2k/vague.nvim",
    event = "VeryLazy",
    config = function()
      require("vague").setup({})
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "mayhem",
    },
  },
}
