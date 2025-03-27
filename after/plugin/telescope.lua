local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Mapping to search from the home directory using Telescope
vim.keymap.set('n', '<leader>fh', function()
  builtin.find_files({ cwd = vim.fn.expand("~") })
end, { desc = "Telescope: Find files in home directory" })
