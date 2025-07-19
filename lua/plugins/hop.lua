return {
  -- disable flash in favor of hop
  { "folke/flash.nvim", enabled = false },
  {
    "smoka7/hop.nvim",
    version = "*",
    cmd = { "HopWord", "HopChar1CurrentLine" },
    opts = {
      keys = "tsraneiodhplfugjvmwybk",
    },
  },
}
