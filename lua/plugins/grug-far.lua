return {
  {
    "MagicDuck/grug-far.nvim",
    keys = {
      {
        "<leader>sr",
        function()
          local grug = require("grug-far")
          local buffer = vim.fn.expand("%")
          grug.open({
            transient = true,
            prefills = {
              paths = buffer,
            },
          })
        end,
        mode = { "n", "v" },
        desc = "Search and Replace (Buffer)",
      },
      {
        "<leader>sR",
        function()
          local grug = require("grug-far")
          local ext = vim.bo.buftype == "" and vim.fn.expand("%:e")
          grug.open({
            transient = true,
            prefills = {
              filesFilter = ext and ext ~= "" and "*." .. ext or nil,
            },
          })
        end,
        mode = { "n", "v" },
        desc = "Search and Replace (Root Dir)",
      },
    },
  },
}
