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

local palette = {
	-- Base colors
	bg = color("#1e1e1e", 234),
	fg = color("#CCCCCC", 252),

	-- Grayscale spectrum
	white = color("#fcfcfc", 255),
	light_grey = color("#f7f7f7", 255),
	grey = color("#a5a5a5", 248),
	dark_grey = color("#5a5a5a", 240),
	darker_grey = color("#303030", 236),
	darkest_grey = color("#242424", 235),
	black = color("#181818", 233),

	-- Accent color
	yellow = color("#dadd99", 186),

	none = { gui = "NONE", cterm = "NONE" },
}

return palette
