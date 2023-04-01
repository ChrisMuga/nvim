-- Select a random theme (according to time), and set it as the default
-- New Theme Every Minute (when you fire up nvim, obviously, not realtime.)
time = os.date("*t")
min = time.min

if min == 0 then
	min = 1
end

themes = {
	

		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'solarized', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'solarized', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'solarized', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'solarized', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'solarized', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'solarized', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'solarized', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'solarized', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'solarized', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 'solarized', 

	}

random_theme = themes[min]
vim.cmd('colorscheme ' .. random_theme)
