local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', builtin.find_files, { desc = 'Telescope find files' })
