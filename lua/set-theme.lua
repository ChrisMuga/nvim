local tod = tostring(os.date("%p"))

local is_am = string.lower(tod) == "am"

-- local theme = "material-deep-ocean"
local theme = "rose-pine-main"
-- local theme = "nordfox"
-- local theme = "carbonfox"
local mode

-- if is_am then
-- 	mode = "light"
-- 	theme = "rose-pine-dawn"
-- else
-- 	mode = "dark"
-- 	theme = "rose-pine-main"
-- end

vim.o.background = mode
vim.cmd.colorscheme(theme)
