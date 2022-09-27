local status_ok, lsp_zero = pcall(require, "lsp-zero")
if not status_ok then
  return
end

lsp_zero.preset("recommended")
lsp_zero.setup()

local config = {
  -- enable virtual text
  virtual_text = true,
  --disable signas
  signs = false,
  severity_sort = true,
}

vim.diagnostic.config(config)
