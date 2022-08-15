--[[ local status_ok, _ = pcall(require, "lspconfig") ]]
--[[ if not status_ok then ]]
--[[   return ]]
--[[ end ]]

--[[ require "user.lsp.configs" ]]
--[[ require("user.lsp.handlers").setup() ]]
--[[ require "user.lsp.null-ls" ]]

local status_ok, lsp = pcall(require, "lsp-zero")
if not status_ok then
  return
end

lsp.preset('recommended')
lsp.setup()
