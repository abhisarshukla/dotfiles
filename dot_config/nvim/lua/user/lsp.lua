local status_ok, lsp_zero = pcall(require, "lsp-zero")
if not status_ok then
  return
end

lsp_zero.preset("recommended")
lsp_zero.setup()

local config = {
  -- enable virtual text
  virtual_text = {
    prefix = "",
    format = function (diagnostic)
      local icons = {
       [vim.diagnostic.severity.ERROR] =  "",
       [vim.diagnostic.severity.WARN] =  "喝",
       [vim.diagnostic.severity.INFO] =  "ﱤ",
       [vim.diagnostic.severity.HINT] = "",
      }
      return string.format("%s %s", icons[diagnostic.severity], diagnostic.message)
    end
  },
  --disable signs
  signs = false,
  -- only underline if there is error
  underline = {
    severity = vim.diagnostic.severity.ERROR,
  },
  severity_sort = true,
  update_in_insert = true, -- update diagnostic in insert mode
}

vim.diagnostic.config(config)
