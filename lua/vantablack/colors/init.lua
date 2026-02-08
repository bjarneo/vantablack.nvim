local Util = require("vantablack.utils")

local M = {}

---@class Palette
local default_palette = {
	bg = "#0d0d0d",
	bg_dark = "#0d0d0d",
	bg_dark1 = "#0d0d0d",
	bg_highlight = "#1a1a1a",

	-- Luminance tiers (T1=dimmest UI chrome → T7=brightest focus)
	-- T1: #505050 ~2.4:1 - gutter, line numbers
	-- T2: #7a7a7a ~4.5:1 - comments (WCAG AA compliant)
	-- T3: #888888 ~5.5:1 - operators, punctuation, preprocessor
	-- T4: #9a9a9a ~6.8:1 - strings, numbers, secondary data
	-- T5: #b0b0b0 ~9.0:1 - variables, identifiers, properties
	-- T6: #c8c8c8 ~11.5:1 - keywords, types, control flow
	-- T7: #e0e0e0 ~15.0:1 - functions, main foreground

	blue = "#b8b8b8",   -- T5-6: statements, directories, titles
	blue0 = "#2a2a2a",  -- selection bg
	blue1 = "#a0a0a0",  -- T5: borders, pmenu match
	blue2 = "#a0a0a0",  -- T5: info diagnostic
	blue5 = "#888888",  -- T3: operators, punctuation delimiters
	blue6 = "#9a9a9a",  -- T4: string.regexp
	blue7 = "#1a1a1a",  -- diff change bg

	comment = "#7a7a7a", -- T2: WCAG AA 4.5:1 minimum
	cyan = "#8a8a8a",    -- T3: preprocessor, macros, special

	dark3 = "#606060",   -- between T1-T2: nontext, ignored
	dark5 = "#909090",   -- T3-4: concealed text

	fg = "#e0e0e0",      -- T7: main foreground (softer than pure white)
	fg_dark = "#c8c8c8", -- T6: messages, fallback bright text
	fg_gutter = "#505050", -- T1: line numbers, gutter

	green = "#9a9a9a",   -- T4: strings, characters
	green1 = "#a8a8a8",  -- T5: properties, variable.member
	green2 = "#a8a8a8",  -- T5: git add

	magenta = "#b0b0b0",  -- T5: constructors
	magenta2 = "#b0b0b0", -- T5: variables, identifiers

	orange = "#a0a0a0",  -- T4-5: numbers, booleans
	purple = "#c8c8c8",  -- T6: keywords, constants, conditionals

	red = "#a0a0a0",     -- T4-5: tags
	red1 = "#c0c0c0",    -- T6: error, git delete (needs visibility)

	teal = "#909090",    -- T3-4: hints, markup links
	terminal_black = "#505050", -- T1: terminal black

	yellow = "#c8c8c8",  -- T6: types, labels, parameters, warnings

	-- Git colors will be calculated from the palette colors above
	git = {},

	special_char = "#b0b0b0", -- T5
}

---@param opts? vantablack.Config
function M.setup(opts)
	opts = require("vantablack.config").extend(opts)

	-- Color Palette
	---@class ColorScheme: Palette
	local colors = vim.deepcopy(default_palette)

	if opts.colors and next(opts.colors) then
		colors = vim.tbl_deep_extend("force", colors, opts.colors)
	end

	Util.bg = colors.bg
	Util.fg = colors.fg

	colors.none = "NONE"

	-- Always update git colors to use the palette colors (either default or injected)
	-- This ensures git colors are derived from the theme colors
	colors.git.add = colors.green2 or colors.green
	colors.git.delete = colors.red1 or colors.red
	colors.git.change = colors.orange or colors.yellow

	-- Diff colors using tokyonight approach
	colors.diff = {
		add = Util.blend_bg(colors.green2 or colors.green, 0.25),
		delete = Util.blend_bg(colors.red1 or colors.red, 0.25),
		change = Util.blend_bg(colors.blue7 or colors.blue, 0.15),
		text = colors.blue7 or colors.blue,
	}

	colors.git.ignore = colors.dark3
	colors.black = Util.blend_bg(colors.bg, 0.8, colors.bg)
	colors.border_highlight = Util.blend_bg(colors.blue1, 0.8)
	colors.border = colors.black

	-- Popups and statusline always get a dark background
	colors.bg_popup = colors.bg_dark
	colors.bg_statusline = colors.bg_dark

	-- Sidebar and Floats are configurable
	colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
		or opts.styles.sidebars == "dark" and colors.bg_dark
		or colors.bg

	colors.bg_float = opts.styles.floats == "transparent" and colors.none
		or opts.styles.floats == "dark" and colors.bg_dark
		or colors.bg

	colors.bg_visual = Util.blend_bg(colors.blue0, 0.4)
	colors.bg_search = colors.blue0
	colors.fg_sidebar = colors.fg
	colors.fg_float = colors.fg

	colors.error = colors.red1
	colors.todo = colors.blue
	colors.warning = colors.yellow
	colors.info = colors.blue2
	colors.hint = colors.teal

	-- Create blended colors for subtle highlights
	colors.subtle_bg = Util.blend_bg(colors.fg, 0.10)
	colors.cursorline_bg = Util.blend_bg(colors.fg, 0.20)
	colors.selection_bg = Util.blend_bg(colors.fg, 0.25)
	colors.float_bg = Util.blend_bg(colors.fg, 0.12)

	colors.rainbow = {
		colors.blue,
		colors.yellow,
		colors.green,
		colors.teal,
		colors.magenta,
		colors.purple,
		colors.orange,
		colors.red,
	}

	-- Terminal colors
	colors.terminal = {
		black = colors.black,
		black_bright = colors.terminal_black,
		red = colors.red,
		red_bright = colors.red,
		green = colors.green,
		green_bright = colors.green,
		yellow = colors.yellow,
		yellow_bright = colors.yellow,
		blue = colors.blue,
		blue_bright = colors.blue,
		magenta = colors.magenta,
		magenta_bright = colors.magenta,
		cyan = colors.cyan,
		cyan_bright = colors.cyan,
		white = colors.fg_dark,
		white_bright = colors.fg,
	}

	-- Call user's on_colors callback for further customization
	opts.on_colors(colors)

	return colors, opts
end

return M
