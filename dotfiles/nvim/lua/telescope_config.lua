local telescope = require('telescope')
telescope.setup({
  pickers = {
    find_files = { file_ignore_patterns = { 'node_modules', '.git', '.venv' }, hidden = true },
    live_grep = {
      file_ignore_patterns = { 'node_modules', '.git', '.venv' },
      additonal_args = function(_)
        return { "--hidden" }
      end
    }
  },
  extensions = {
    fzf = {
      fuzzy = true, override_generic_sorter = true, override_file_sorter = true, case_mode = "smart_case"} } }) telescope.load_extension('fzf')

