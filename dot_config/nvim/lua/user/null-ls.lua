local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  return
end

local code_actions = null_ls.builtins.code_actions;
local diagnostics = null_ls.builtins.diagnostics;
local hover = null_ls.builtins.hover;
local formatting = null_ls.builtins.formatting;

null_ls.setup({
  sources = {
    formatting.prettier,
  },
  update_in_insert = true,
  root_dir = require("null-ls.utils").root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),
})
