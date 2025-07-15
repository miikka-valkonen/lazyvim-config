return {
  {
    "saghen/blink.cmp",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    keymap = {
      preset = "super-tab",
      ["<ENTER>"] = { "select_and_accept" },
    },
    opts = {
      sources = {
        default = { "easy-dotnet" },
        providers = {
          ["easy-dotnet"] = {
            name = "easy-dotnet",
            enabled = true,
            module = "easy-dotnet.completion.blink",
            score_offset = 10000,
            async = true,
          },
        },
      },
    },
  },
}
