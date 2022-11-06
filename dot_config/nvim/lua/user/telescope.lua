local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.setup {
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

telescope.load_extension('fzy_native')

