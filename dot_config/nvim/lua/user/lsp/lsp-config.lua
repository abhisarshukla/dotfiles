local config = {
  -- enable virtual text
  virtual_text = {
    source = "if_many",
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

