vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function ()
    vim.highlight.on_yank()
  end,
})

vim.cmd [[
  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd = 
  augroup end
]]

