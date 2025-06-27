-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>N", function()
  vim.cmd([[Neorg workspace notes]])
end, { desc = "Neorg notes" })

vim.keymap.set("n", "<TAB>", "<cmd>bn!<CR>", {})
vim.keymap.set("n", "<S-TAB>", "<cmd>bp!<CR>", {})

vim.keymap.set("t", "<ESC>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
