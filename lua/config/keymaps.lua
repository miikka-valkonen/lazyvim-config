-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<TAB>", "<cmd>bn!<CR>", {}) -- Switch to next buffer
vim.keymap.set("n", "<S-TAB>", "<cmd>bp!<CR>", {}) -- Switch to previous buffer

-- Terminal keymaps
-- Add smooth window navigation
vim.keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h")
vim.keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j")
vim.keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k")
vim.keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l")
-- Exit terminal mode
vim.keymap.set("t", "<ESC>", "<C-\\><C-N>")
vim.keymap.set("t", "jk", "<C-\\><C-N>")

-- Quickly exit from insert mode
vim.keymap.set("i", "jk", "<ESC>")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<leader>cW", function()
  vim.cmd("%s/\r//g")
end, { desc = "Replace windows line endings" })

-- Run menu
vim.keymap.set("n", "<leader>r", "", { desc = "run" })
vim.keymap.set(
  "n",
  "<leader>rf",
  "<Cmd>!tmux new-window -S -c " .. vim.fn.getcwd() .. '/src/AzureFunctions -n func "func start"<CR>',
  { desc = "run function app" }
)

-- Plugins
vim.keymap.set("n", "<leader>N", function()
  vim.cmd([[Neorg workspace notes]])
end, { desc = "Neorg notes" })

vim.keymap.set("", "s", function()
  vim.cmd([[HopWord]])
end)
vim.keymap.set("", "S", function()
  vim.cmd([[HopChar1CurrentLine]])
end)
