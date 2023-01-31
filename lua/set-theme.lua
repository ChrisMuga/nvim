-- Select a random theme (according to time), and set it as the default
time = os.date("*t")
hour = time.hour

themes = {
		
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox', 
		'terafox', 'nightfox', 'dawnfox', 'carbonfox', 'duskfox', 'nordfox' 
	}

random_theme = themes[hour]
vim.cmd('colorscheme ' .. random_theme)
