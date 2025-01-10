local tod = tostring(os.date("%p"))

local is_am = string.lower(tod) == "am"

local theme
local mode

if is_am then
	mode  = "light"
	theme = "catppuccin-latte"
else
	mode  = "dark"
	theme = "catppuccin-macchiato"
end

vim.o.background = mode
vim.cmd.colorscheme(theme)


