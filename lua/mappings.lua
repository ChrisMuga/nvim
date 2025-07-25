-- Background Settings
vim.keymap.set('n', 'bd', '<cmd>set bg=dark<cr>')
vim.keymap.set('n', 'bl', '<cmd>set bg=light<cr>')

-- Solarized Theme Settings
vim.keymap.set('n', 'sd', '<cmd>set bg=dark<cr> <cmd>colorscheme solarized<cr>')
vim.keymap.set('n', 'sl', '<cmd>set bg=light<cr> <cmd>colorscheme solarized<cr>')

-- Seach and Replace
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})

-- Go to definition
vim.keymap.set('n', 'gd', '<C-]>', { desc = 'Go to definition' })
