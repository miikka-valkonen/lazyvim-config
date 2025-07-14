return {
  {
    "ionide/Ionide-vim",
    ft = { "fs", "fsi", "fsx" },
    config = function()
      vim.g["fsharp#lsp_codelens"] = 0
      require("ionide").setup({})
    end,
  },
}
