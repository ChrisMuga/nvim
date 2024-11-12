local is_am = os.date("%p") == "am"

print(os.date("%p"))
local theme

if is_am then
	print("Rise and Shine")
	theme = "tokyonight-day"
else
	print("Ye, though I walk through the valley of the shadow of death\nI WILL FEAR NO EVIL")
	theme = "tokyonight-storm"
end

print(theme)

vim.cmd.colorscheme(theme)


