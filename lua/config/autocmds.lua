-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- vim.api.nvim_create_autocmd("Filetype", {
--   pattern = "norg",
--   callback = function()
--     vim.keymap.set("n", "<C-Space>", "Plug>(neorg.qol.todo-items.todo.task-cycle)", { buffer = true })
--     vim.keymap.set("n", "<CR>", "Plug>(neorg.esupports.hop.hop-link)", { buffer = true })
--   end,
-- })

-- Not an autocmd, but whatever. Install mason packages not included in LazyVim/LazyExtras.
vim.api.nvim_create_user_command("MasonInstallAll", function()
  vim.cmd("MasonInstall csharp-language-server csharpier")
end, {})
