-- Mappings

-- Map FZF Commands to Keyboard shortcuts
-- nmap ff :Files<CR>
-- nmap fw :Ag<CR>

-- Nerd Tree
vim.keymap.set('n','<C-n>', '<cmd>NERDTree<cr>')
vim.keymap.set('n','<C-t>', '<cmd>NERDTreeToggle<cr>')
vim.keymap.set('n', '<C-f>', 'NERDTreeFind<CR>')
vim.keymap.set('n', '<C-b>', 'BlamerToggle<CR>')

-- Fuzzy Finder Mappings
vim.keymap.set('n', 'ff', '<cmd>Telescope find_files<cr>') -- Find Files
vim.keymap.set('n', 'fs', '<cmd>Telescope live_grep<cr>') -- Find String
vim.keymap.set('n', 'gs', '<cmd>Telescope grep_string<cr>') -- Grep String Under Cursor
vim.keymap.set('n', 'fb', '<cmd>Telescope buffers<cr>') -- Find Open Files (in Buffer)
vim.keymap.set('n', 'fc', '<cmd>Telescope oldfiles<cr>') -- Find Closed Files (in Buffer)
vim.keymap.set('n', 'fh', '<cmd>Telescope help_tags<cr>')


