local status_ok, treesitter = pcall(require, "treesitter")
if not status_ok then
  return
end

treesitter.configs.setup({
  ensure_installed = "all",
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  }
})

vim.o.foldexpr = treesitter.foldexpr()
