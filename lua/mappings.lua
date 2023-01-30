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
vim.keymap.set('n', 'ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', 'fs', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', 'fb', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', 'fh', '<cmd>Telescope help_tags<cr>')


