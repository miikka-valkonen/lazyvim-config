return {
  {
    "nvim-neorg/neorg",
    -- lazy-load on filetype
    ft = "norg",
    cmd = "Neorg", -- lazy load on command, allows you to autocomplete :Neorg regardless of whether it's loaded yet
    --  (you could also just remove both lazy loading things)
    priority = 30, -- treesitter is on default priority of 50, neorg should load after it.
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
              default_workspace = "notes",
            },
          },
          ["core.esupports.hop"] = {},
          -- ["core.keybinds"] = {
          -- config = {
          -- default_keybinds = false,
          -- },
          -- },
        },
      })

      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
  },
}
