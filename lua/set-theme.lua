-- Select a random theme (according to time), and set it as the default
-- New Theme Every Minute (when you fire up nvim, obviously, not realtime.)
time = os.date("*t")
min = time.min

if min == 0 then
	min = 1
end

themes = {

		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'tokyonight-night', 'tokyonight-storm', 'tokyonight-day', 'tokyonight-moon', 'catppuccin', 'catppuccin-frappe', 'catppuccin-latte', 'catpuccin-macchiato', 'catppuccin-mocha', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'tokyonight-night', 'tokyonight-storm', 'tokyonight-day', 'tokyonight-moon', 'catppuccin', 'catppuccin-frappe', 'catppuccin-latte', 'catpuccin-macchiato', 'catppuccin-mocha', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'tokyonight-night', 'tokyonight-storm', 'tokyonight-day', 'tokyonight-moon', 'catppuccin', 'catppuccin-frappe', 'catppuccin-latte', 'catpuccin-macchiato', 'catppuccin-mocha', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'tokyonight-night', 'tokyonight-storm', 'tokyonight-day', 'tokyonight-moon', 'catppuccin', 'catppuccin-frappe', 'catppuccin-latte', 'catpuccin-macchiato', 'catppuccin-mocha', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'tokyonight-night', 'tokyonight-storm', 'tokyonight-day', 'tokyonight-moon', 'catppuccin', 'catppuccin-frappe', 'catppuccin-latte', 'catpuccin-macchiato', 'catppuccin-mocha', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'tokyonight-night', 'tokyonight-storm', 'tokyonight-day', 'tokyonight-moon', 'catppuccin', 'catppuccin-frappe', 'catppuccin-latte', 'catpuccin-macchiato', 'catppuccin-mocha', 

	}

random_theme = themes[min]
vim.cmd('colorscheme ' .. random_theme)
