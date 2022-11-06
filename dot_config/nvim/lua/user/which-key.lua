local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

which_key.setup {
  window = {
    winblend = 0,
    border = 'single',
  },
}

which_key.register({
  e = { '<cmd>NvimTreeToggle<cr>', 'explorer' },
  f = {
    name = 'find',
    f = { "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
      'files' },
    g = { "<cmd>lua require('telescope.builtin').git_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
      'git files' },
    b = { "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>",
      'buffer' },
    r = { "<cmd>lua require('telescope.builtin').oldfiles(require('telescope.themes').get_dropdown{previewer = false})<cr>",
      'recent' },
  },
  l = {
    name = 'lsp',
    f = { "<cmd>LspZeroFormat<cr>", 'format' },
    r = { vim.lsp.buf.rename, 'rename' },
    a = { vim.lsp.buf.code_action, 'code action' }
  },
  g = {
    name = 'git',
    c = { "<cmd>Telescope git_commits<cr>", 'commits' },
    b = { "<cmd>Telescope git_bcommits<cr>", 'buffer commits' },
  }
}, { prefix = '<leader>' })
