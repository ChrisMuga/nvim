-- Settings

-- Autochange the directory
-- vim.opt.autochdir = true
vim.opt.encoding = "UTF-8"
vim.opt.guifont = "DroidSansMono_Nerd_Font:h11"
vim.opt.autoindent = true
vim.opt.showmatch = true
vim.opt.termguicolors = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.wo.number = true

-- Tab width options
vim.opt.shiftwidth=4
vim.opt.tabstop = 4

-- Startup Colorscheme
vim.cmd [[colorscheme carbonfox]]
-- vim.cmd [[colorscheme nightfox]
-- vim.cmd [[colorscheme material-oceanic]]
-- vim.cmd [[colorscheme material-deep-ocean]]

-- Attach file explorer
-- vim.cmd [[Neotree show]] --show on start
vim.cmd [[Neotree close]] --close on start

vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

-- Keymaps
vim.keymap.set("n", "nf", '<cmd>Neoformat<cr>')

require('telescope').load_extension('media_files')

require('lsp')

-- Close neotree when opening just one file.
vim.api.nvim_create_augroup("neotree_autoopen", { clear = true })
vim.api.nvim_create_autocmd("BufRead", { -- Changed from BufReadPre
  desc = "Open neo-tree on enter",
  group = "neotree_autoopen",
  once = true,
  callback = function()
    if vim.g.neotree_opened then
      vim.cmd "Neotree close"
      vim.g.neotree_opened = false
    end
  end,
})
