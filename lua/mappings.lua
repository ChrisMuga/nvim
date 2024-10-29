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
local default_opts = {noremap = true, silent = true}
vim.keymap.set('v', '<leader>sa', 'y<ESC>:Telescope live_grep default_text=<c-r>0<CR>', default_opts)
