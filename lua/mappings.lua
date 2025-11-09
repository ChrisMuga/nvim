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

-- Tab manipulation and navigation
-- Create new tab
vim.keymap.set('n', '<leader>tn', '<esc><cmd>tabnew<CR>', {
    desc = "Create new tab"
})
-- Navigate to the next tab
vim.keymap.set('n', '<leader>t<right>', '<esc><cmd>tabnext<CR>', {
    desc = "Navigate to the next tab"
})
-- Navigate to the previous tab
vim.keymap.set('n', '<leader>t<left>', '<esc><cmd>tabprevious<CR>', {
    desc = "Navigate to the previous tab"
})

-- Go to definition
vim.keymap.set('n', 'gd', '<C-]>', { desc = 'Go to definition' })
