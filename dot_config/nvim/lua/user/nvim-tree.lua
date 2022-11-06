local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup {
  sort_by = "name",
  reload_on_bufenter = true,
  select_prompts = false,
  sync_root_with_cwd = true,
  view = {
    adaptive_size = true,
  },
  renderer = {
    special_files = { "Cargo.toml", "Makefile", "README.md", "readme.md", "package.json", "pom.xml" },
  },
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
  update_focused_file = {
    enable = true,
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
}
