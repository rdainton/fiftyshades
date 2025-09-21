local M = {}

local palette = require("fiftyshades.palette")

--- @class Highlight
--- @field fg Color Foreground color
--- @field bg Color Background color

--- @alias TextDecoration
--- | "bold"
--- | "italic"
--- | "underline"
--- | "strikethrough"
--- | "reverse"
--- | "nocombine"

local background = palette.bg

local class_none = "FiftyShadesNone"
local class_debug = "FiftyShadesDebug"

--- Sets highlight group with foreground and background colors
--- @param group string
--- @param highlight Highlight
local hi = function(group, highlight)
	vim.api.nvim_set_hl(0, group, {
		fg = highlight.fg.gui,
		bg = highlight.bg.gui,
		ctermfg = highlight.fg.cterm,
		ctermbg = highlight.bg.cterm,
	})
end

--- Sets highlight group with colors and additional styling (bold, italic, underline, etc.)
--- @param group string
--- @param highlight Highlight
--- @param decorations TextDecoration[]
local hs = function(group, highlight, decorations)
	--- @type table<string, any>
	local highlight_opts = {
		fg = highlight.fg.gui,
		bg = highlight.bg.gui,
		ctermfg = highlight.fg.cterm,
		ctermbg = highlight.bg.cterm,
	}

	for _, item in ipairs(decorations) do
		highlight_opts[item] = true
	end

	vim.api.nvim_set_hl(0, group, highlight_opts)
end

--- Links one highlight group to another
--- @param group string The highlight group to create
--- @param link string The existing highlight group to link to
local link = function(group, link)
	vim.api.nvim_set_hl(0, group, { link = link })
end

--- Sets up basic syntax highlighting for code elements
M.base_syntax = function()
	hi(class_none, { fg = palette.none, bg = palette.none })
	hi(class_debug, { fg = palette.bg, bg = palette.lime_green })

	hi("Normal", { fg = palette.fg, bg = background })
	hi("Comment", { fg = palette.matrix_green, bg = palette.none })
	hi("String", { fg = palette.lime_green, bg = palette.none })
	hi("Character", { fg = palette.lime_green, bg = palette.none })
	hi("Number", { fg = palette.gray_10, bg = palette.none })
	hi("Boolean", { fg = palette.grey_30, bg = palette.none })
	hi("Float", { fg = palette.gray_10, bg = palette.none })
	hi("Function", { fg = palette.gray_10, bg = palette.none })
	hi("Special", { fg = palette.fg, bg = palette.none })
	hi("SpecialChar", { fg = palette.fg, bg = palette.none })
	hi("SpecialKey", { fg = palette.grey_30, bg = palette.none })
	hi("Error", { fg = palette.fg, bg = palette.none })

	hi("Constant", { fg = palette.grey_30, bg = palette.none })
	hi("Statement", { fg = palette.grey_30, bg = palette.none })
	hi("Conditional", { fg = palette.grey_30, bg = palette.none })
	hi("Exception", { fg = palette.grey_30, bg = palette.none })
	hi("Identifier", { fg = palette.grey_20, bg = palette.none })
	hi("Type", { fg = palette.gray_10, bg = palette.none })
	hi("Repeat", { fg = palette.grey_30, bg = palette.none })
	hi("Label", { fg = palette.grey_30, bg = palette.none })
	hi("Operator", { fg = palette.grey_30, bg = palette.none })
	hi("Keyword", { fg = palette.grey_30, bg = palette.none })
	hi("Delimiter", { fg = palette.grey_30, bg = palette.none })
	hi("Tag", { fg = palette.grey_20, bg = palette.none })
	hi("SpecialComment", { fg = palette.grey_30, bg = palette.none })
	hi("Debug", { fg = palette.fg, bg = palette.none })
	hi("PreProc", { fg = palette.grey_20, bg = palette.none })
	hi("Include", { fg = palette.grey_20, bg = palette.none })
	hi("Define", { fg = palette.grey_20, bg = palette.none })
	hi("Macro", { fg = palette.grey_20, bg = palette.none })
	hi("PreCondit", { fg = palette.grey_20, bg = palette.none })
	hi("StorageClass", { fg = palette.grey_20, bg = palette.none })
	hi("Structure", { fg = palette.grey_20, bg = palette.none })
	hi("Typedef", { fg = palette.grey_20, bg = palette.none })
	hi("Title", { fg = palette.fg, bg = palette.none })
	hi("Todo", { fg = background, bg = palette.lime_green })
	hi("Underlined", { fg = palette.fg, bg = palette.none })
	hi("Ignore", { fg = palette.grey_30, bg = palette.none })
end

--- Sets up UI element highlighting (cursor, search, menus, etc.)
M.ui = function()
	local underline = { "underline" }

	hi("Cursor", { fg = palette.bg, bg = palette.fg })
	hi("CursorLine", { fg = palette.none, bg = palette.grey_60 })
	hi("CursorLineNr", { fg = palette.fg, bg = palette.grey_60 })
	hi("ColorColumn", { fg = palette.none, bg = palette.grey_60 })
	hi("LineNr", { fg = palette.grey_30, bg = palette.none })
	hi("NonText", { fg = palette.grey_50, bg = palette.none })
	hi("EndOfBuffer", { fg = palette.grey_60, bg = palette.none })
	hi("VertSplit", { fg = palette.grey_60, bg = palette.none })
	hi("WinSeparator", { fg = palette.grey_60, bg = palette.none })
	hi("Folded", { fg = palette.grey_20, bg = palette.grey_60 })
	hi("FoldColumn", { fg = palette.grey_30, bg = palette.none })
	hi("SignColumn", { fg = palette.none, bg = palette.none })
	hi("Pmenu", { fg = palette.fg, bg = palette.grey_60 })
	hi("PmenuSel", { fg = background, bg = palette.grey_20 })
	hi("PmenuSbar", { fg = palette.none, bg = palette.grey_60 })
	hi("PmenuThumb", { fg = palette.none, bg = palette.grey_30 })
	hi("TabLine", { fg = palette.grey_20, bg = palette.grey_60 })
	hi("TabLineFill", { fg = palette.grey_20, bg = palette.grey_60 })
	hi("TabLineSel", { fg = palette.fg, bg = background })
	hi("StatusLine", { fg = palette.fg, bg = palette.grey_60 })
	hi("StatusLineNC", { fg = palette.grey_30, bg = palette.grey_60 })
	hi("WildMenu", { fg = background, bg = palette.grey_20 })
	hi("Visual", { fg = palette.fg, bg = palette.grey_50 })
	hi("Search", { fg = palette.fg, bg = palette.grey_30 })
	hi("IncSearch", { fg = palette.fg, bg = palette.grey_60 })
	hi("CurSearch", { fg = palette.fg, bg = palette.grey_60 })
	hi("Directory", { fg = palette.grey_20, bg = palette.none })

	hs("MatchParen", { fg = palette.fg, bg = palette.grey_50 }, underline)

	hi("ErrorMsg", { fg = palette.fg, bg = palette.none })
	hi("WarningMsg", { fg = palette.grey_20, bg = palette.none })
	hi("ModeMsg", { fg = palette.grey_30, bg = palette.none })
	hi("MoreMsg", { fg = palette.grey_30, bg = palette.none })
	hi("Question", { fg = palette.grey_20, bg = palette.none })
	hi("MsgArea", { fg = palette.fg, bg = palette.none })

	hi("DiagnosticError", { fg = palette.grey_20, bg = palette.none })
	hi("DiagnosticWarn", { fg = palette.grey_30, bg = palette.none })
	hi("DiagnosticInfo", { fg = palette.grey_30, bg = palette.none })
	hi("DiagnosticHint", { fg = palette.grey_30, bg = palette.none })

	hs("DiagnosticUnderlineError", { fg = palette.grey_20, bg = palette.none }, underline)
	hs("DiagnosticUnderlineWarn", { fg = palette.grey_30, bg = palette.none }, underline)
	hs("DiagnosticUnderlineInfo", { fg = palette.grey_30, bg = palette.none }, underline)
	hs("DiagnosticUnderlineHint", { fg = palette.grey_30, bg = palette.none }, underline)

	hi("NormalFloat", { fg = palette.fg, bg = palette.grey_60 })
	hi("FloatBorder", { fg = palette.grey_50, bg = palette.grey_60 })
	hi("Whitespace", { fg = palette.grey_50, bg = palette.none })
end

--- Links various highlight groups to base groups for consistency
M.apply_links = function()
	-- UI: Diff
	link("DiffAdd", "DiagnosticWarn")
	link("DiffChange", "DiagnosticInfo")
	link("DiffDelete", "DiagnosticError")
	link("DiffText", "Visual")

	-- UI: search
	link("CurSearch", "IncSearch")

	-- UI: window
	link("FloatBorder", "Normal")

	-- UI: messages
	link("Question", "String")

	-- UI: Diagnostic
	link("DiagnosticSignError", "DiagnosticError")
	link("DiagnosticSignWarn", "DiagnosticWarn")
	link("DiagnosticSignInfo", "DiagnosticInfo")
	link("DiagnosticSignHint", "DiagnosticHint")
	link("DiagnosticFloatingError", "DiagnosticError")
	link("DiagnosticFloatingWarn", "DiagnosticWarn")
	link("DiagnosticFloatingInfo", "DiagnosticInfo")
	link("DiagnosticFloatingHint", "DiagnosticHint")
	link("DiagnosticVirtualTextError", "DiagnosticError")
	link("DiagnosticVirtualTextWarn", "DiagnosticWarn")
	link("DiagnosticVirtualTextInfo", "DiagnosticInfo")
	link("DiagnosticVirtualTextHint", "DiagnosticHint")

	-- Language: lua
	-- Syntax: built-in
	link("luaFunction", class_none)

	-- Language: HTML
	-- Syntax: built-in
	link("htmlTag", "Special")
	link("htmlEndTag", "Special")
	link("htmlTagName", "Function")
	link("htmlSpecialTagName", "Function")
	link("htmlArg", class_none)

	-- Language: CSS
	-- Syntax: built-in
	link("cssTagName", "Function")
	link("cssColor", "Number")
	link("cssVendor", class_none)
	link("cssBraces", class_none)
	link("cssSelectorOp", class_none)
	link("cssSelectorOp2", class_none)
	link("cssIdentifier", class_none)
	link("cssClassName", class_none)
	link("cssClassNameDot", class_none)
	link("cssVendor", class_none)
	link("cssImportant", class_none)
	link("cssAttributeSelector", class_none)

	-- Language: PHP
	-- Syntax: built-in
	link("phpNullValue", "Boolean")
	link("phpSpecialFunction", "Function")
	link("phpParent", class_none)
	link("phpClasses", class_none)

	-- Language: Javascript
	-- Syntax: built-in
	link("javaScriptNumber", "Number")
	link("javaScriptNull", "Number")
	link("javaScriptBraces", class_none)
	link("javaScriptFunction", class_none)

	-- Language: Javascript
	-- Syntax: 'pangloss/vim-javascript'
	link("jsFunctionKey", "Function")
	link("jsUndefined", "Number")
	link("jsNull", "Number")
	link("jsSuper", class_none)
	link("jsThis", class_none)
	link("jsArguments", class_none)

	-- Language: Typescript
	-- Syntax: built-in
	link("typescriptImport", class_none)
	link("typescriptExport", class_none)
	link("typescriptBraces", class_none)
	link("typescriptDecorator", class_none)
	link("typescriptParens", class_none)
	link("typescriptCastKeyword", class_none)

	-- Language: JSX
	-- Syntax: 'maxmellon/vim-jsx-pretty'
	link("jsxTagName", "Function")
	link("jsxComponentName", "Function")
	link("jsxPunct", "Special")
	link("jsxCloseString", "Special")
	link("jsxEqual", "Special")
	link("jsxAttrib", class_none)

	-- Treesitter (old highlight groups)
	link("TSConstructor", class_none)
	link("TSVariableBuiltin", class_none)
	link("TSConstBuiltin", "Number")
	link("TSFuncBuiltin", "Function")
	link("luaTSPunctBracket", class_none)
	link("TSKeywordFunction", class_none)

	-- Treesitter
	link("@function.call", "Function")
	link("@function.builtin", "Function")
	link("@punctuation.bracket", class_none)
	link("@constant.builtin", "Number")
	link("@constructor", class_none)
	link("@type.css", "Function")
	link("@constructor.php", "Function")
	link("@method.vue", class_none)
	link("@tag.delimiter", "Special")
	link("@tag.attribute", class_none)
	link("@tag", "Function")
	link("@text.uri.html", "String")
end

--- Initializes the colorscheme by clearing existing highlights and setting options
--- @param name string The name of the colorscheme
M.init = function(name)
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.opt.background = "dark"
	vim.g.colors_name = name
end

--- Main setup function that applies the complete colorscheme
function M.setup()
	M.init("fiftyshades")
	M.base_syntax()
	M.ui()
	M.apply_links()
end

return M
