local status_ok, neogit = pcall(require, "neogit")
if not status_ok then
  return
end

neogit.setup {
  -- customize displayed signs
  signs = {
    -- { CLOSED, OPENED }
    section = { ">", "v" },
    item = { ">", "v" },
    hunk = { "", "" },
  },
  integrations = {
    diffview = true
  },
}
