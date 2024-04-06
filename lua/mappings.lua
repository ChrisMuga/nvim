-- Mappings

Map FZF Commands to Keyboard shortcuts
nmap ff :Files<CR>
nmap fw :Ag<CR>

Nerd Tree
vim.keymap.set('n','<C-t>', '<cmd>NERDTreeToggle<cr>')
vim.keymap.set('n','<C-f>', '<cmd>NERDTreeFind<cr>')

-- Fuzzy Finder Mappings
-- vim.keymap.set('n', 'ff', '<cmd>Telescope find_files<cr>') -- Find Files
-- vim.keymap.set('n', 'fs', '<cmd>Telescope live_grep<cr>') -- Find String
-- vim.keymap.set('n', 'gs', '<cmd>Telescope grep_string<cr>') -- Grep String Under Cursor
-- vim.keymap.set('n', 'fb', '<cmd>Telescope buffers<cr>') -- Find Open Files (in Buffer)
-- vim.keymap.set('n', 'fc', '<cmd>Telescope oldfiles<cr>') -- Find Closed Files (in Buffer)
-- vim.keymap.set('n', 'fh', '<cmd>Telescope help_tags<cr>')
-- vim.keymap.set('n', 'ft', '<cmd>Telescope colorscheme<cr>')
-- vim.keymap.set('n', 'fg', '<cmd>Telescope git_status<cr>')

-- Background Settings
vim.keymap.set('n', 'bd', '<cmd>set bg=dark<cr>')
vim.keymap.set('n', 'bl', '<cmd>set bg=light<cr>')

-- Solarized Theme Settings
vim.keymap.set('n', 'sd', '<cmd>set bg=dark<cr> <cmd>colorscheme solarized<cr>')
vim.keymap.set('n', 'sl', '<cmd>set bg=light<cr> <cmd>colorscheme solarized<cr>')

-- Floating Terminal
vim.keymap.set('n', 'tt', '<cmd>ToggleTerm<cr>')
