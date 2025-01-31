-- Background Settings
vim.keymap.set('n', 'bd', '<cmd>set bg=dark<cr>')
vim.keymap.set('n', 'bl', '<cmd>set bg=light<cr>')

-- Solarized Theme Settings
vim.keymap.set('n', 'sd', '<cmd>set bg=dark<cr> <cmd>colorscheme solarized<cr>')
vim.keymap.set('n', 'sl', '<cmd>set bg=light<cr> <cmd>colorscheme solarized<cr>')

-- Enable/Disable transparency
vim.keymap.set('n', 'td', '<cmd>TransparentDisable<cr>')
vim.keymap.set('n', 'te', '<cmd>TransparentEnable<cr>')

-- Seach and Replace
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
    desc = "Search current word"
})
