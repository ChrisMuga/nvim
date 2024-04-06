-- Settings

-- Autochange the directory
-- vim.opt.autochdir
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

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Colorscheme
vim.cmd [[colorscheme everforest]]

vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

vim.api.nvim_create_autocmd("User", {
  pattern = "TelescopePreviewerLoaded",
  callback = function(args)
    if args.data.filetype ~= "help" then
      vim.wo.number = true
    elseif args.data.bufname:match("*.csv") then
      vim.wo.wrap = false
    end
  end,
})
require('lsp')
