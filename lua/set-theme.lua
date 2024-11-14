local tod = tostring(os.date("%p"))

local is_am = string.lower(tod) == "am"

local theme

if is_am then
	theme = "tokyonight-day"
else
	theme = "tokyonight-storm"
end

vim.cmd.colorscheme(theme)


