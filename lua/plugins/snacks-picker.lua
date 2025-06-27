return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>se",
        function()
          Snacks.picker.resume()
        end,
        desc = "Resume",
      },
    },
  },
}
