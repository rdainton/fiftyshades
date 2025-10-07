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
	matrix_green = color("#00ff41", 46),
	sage_green = color("#c3d9a4", 151),
	crimson = color("#b8162c", 124),
	green = color("#98C379", 114),
	purple = color("#BF79C3", 139),
	red = color("#E06C75", 204),
	blue = color("#61AFEF", 75),

	none = { gui = "NONE", cterm = "NONE" },
}

-- Default semantic colors (alabaster approach)
local default_semantic = {
	strings = colors.green,
	constants = colors.purple,
	comments = colors.red,
	functions = colors.blue,
	errors = colors.crimson,
}

--- Creates a palette with optional semantic color overrides
--- @param semantic_overrides table|nil Optional table of semantic color overrides
--- @return table The complete palette with colors and semantic
local function create_palette(semantic_overrides)
	local semantic = vim.tbl_deep_extend("force", default_semantic, semantic_overrides or {})

	return {
		colors = colors,
		semantic = semantic,
	}
end

-- Export both the factory function and color helper
return {
	create_palette = create_palette,
	color = color,
}
