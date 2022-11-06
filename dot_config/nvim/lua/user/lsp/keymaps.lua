local status_ok, lsp_zero = pcall(require, "lsp-zero")
if not status_ok then
  return
end

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

lsp_zero.on_attach(function(client, bufnr)
  keymap("n", "gd", "<cmd>lua require('telescope.builtin').lsp_definitions(require('telescope.themes').get_cursor())<cr>", opts)
  keymap("n", "gi", "<cmd>lua require('telescope.builtin').lsp_implementations(require('telescope.themes').get_cursor())<cr>", opts)
  keymap("n", "gr", "<cmd>lua require('telescope.builtin').lsp_references(require('telescope.themes').get_cursor())<cr>", opts)
  keymap("n", "go", "<cmd>lua require('telescope.builtin').lsp_type_definitions(require('telescope.themes').get_cursor())<cr>", opts)
  keymap("n", "K", vim.lsp.buf.hover, opts)
  keymap('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  keymap('n', 'gD', vim.lsp.buf.declaration, opts)
  keymap('v', '<leader>lf', "<cmd>LspZeroFormat<cr>", opts)
  keymap('v', '<leader>la', vim.lsp.buf.code_action, opts)
end)

