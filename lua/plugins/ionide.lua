return {
  {
    "ionide/Ionide-vim",
    config = function()
      vim.g["fsharp#lsp_codelens"] = 0
      require("ionide").setup({})
    end,
  },
}
