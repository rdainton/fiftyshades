--- @class Color
--- @field gui string Hex color value (e.g., "#fafafa")
--- @field cterm integer Terminal color code (e.g., 255)

--- Creates a new Color object
--- @param gui string Hex color value
--- @param cterm integer Terminal color code
--- @return Color
local function color(gui, cterm)
	return { gui = gui, cterm = cterm }
end

local colors = {
	-- Base colors
	bg = color("#1e1e1e", 234),
	fg = color("#CCCCCC", 252),

	-- Grayscale spectrum
	gray_10 = color("#fcfcfc", 255),
	grey_20 = color("#f7f7f7", 255),
	grey_30 = color("#a5a5a5", 248),
	grey_40 = color("#5a5a5a", 240),
	grey_50 = color("#303030", 236),
	grey_60 = color("#242424", 235),
	grey_70 = color("#181818", 233),

	-- Accent colors
	yellow = color("#dadd99", 186),
	lime_green = color("#8fbc8f", 108),
	matrix_green = color("#00ff41", 46),

	none = { gui = "NONE", cterm = "NONE" },
}

-- Semantic colors (alabaster approach)
local semantic = {
	strings = colors.lime_green,
	constants = colors.lime_green,
	comments = colors.matrix_green,
	functions = colors.lime_green,
}

local palette = {
	colors = colors,
	semantic = semantic,
}

return palette
