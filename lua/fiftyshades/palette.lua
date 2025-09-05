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
	grey50 = color("#fafafa", 255),
	grey100 = color("#f5f5f5", 255),
	grey200 = color("#e5e5e5", 254),
	grey300 = color("#d4d4d4", 252),
	grey400 = color("#a3a3a3", 248),
	grey500 = color("#737373", 243),
	grey600 = color("#525252", 239),
	grey700 = color("#404040", 238),
	grey800 = color("#262626", 235),
	grey900 = color("#171717", 234),
	grey950 = color("#0a0a0a", 232),

	red50 = color("#fef2f2", 255),
	red100 = color("#fee2e2", 224),
	red200 = color("#fecaca", 217),
	red300 = color("#fca5a5", 210),
	red400 = color("#f87171", 203),
	red500 = color("#ef4444", 196),
	red600 = color("#dc2626", 160),
	red700 = color("#b91c1c", 124),
	red800 = color("#991b1b", 88),
	red900 = color("#7f1d1d", 52),
	red950 = color("#450a0a", 52),

	none = { gui = "NONE", cterm = "NONE" },
}

return palette
