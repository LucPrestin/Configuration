local telescope = require('telescope')

vim.keymap.set('n', '<leader>ff', ':lua telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})
vim.keymap.set('n', '<leader>fg', ':lua telescope.builtin".live_grep()<CR>', {})
