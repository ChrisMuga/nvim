local tod = tostring(os.date("%p"))

local is_am = string.lower(tod) == "am"

local theme
local mode

if is_am then
	mode  = "light"
	theme = "gruvbox"
else
	mode  = "light"
	theme = "gruvbox"
end

vim.o.background = mode
vim.cmd.colorscheme(theme)


