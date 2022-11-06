local status_ok, lsp_zero = pcall(require, "lsp-zero")
if not status_ok then
  return
end

local keymap = vim.keymap.set
local servers = { "jsonls", "sumneko_lua" }

for _, server in pairs(servers) do 
  local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server)
  if require_ok then
    lsp_zero.configure(server, conf_opts)
  end
end

lsp_zero.preset("recommended")
lsp_zero.set_preferences({ set_lsp_keymaps = false })
lsp_zero.setup()

