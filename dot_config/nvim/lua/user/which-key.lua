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
  h = { '<cmd>nohl<cr>', 'no highlight' },
  c = { '<cmd>Bdelete!<cr>', 'close buffer' },
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
    d = {
      name = 'diff',
      o = { "<cmd>DiffviewOpen<cr>", "open" },
      c = { "<cmd>DiffviewClose<cr>", "close" },
      f = { "<cmd>DiffviewFileHistory %<cr>", "file" },
      F = { "<cmd>DiffviewFileHistory<cr>", "all file" },
    },
    l = { "<cmd>Gitsigns blame_line<cr>", "blame" },
    n = { "<cmd>Neogit<cr>", "neogit" },
  },
}, { prefix = '<leader>' })

-- only dummy
which_key.register({
  h = { '<cmd>nohl<cr>', 'no highlight' },

}, { prefix = '<leader>', mode = 'v' })
