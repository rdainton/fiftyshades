local M = {}

local none = { gui = "NONE", cterm = "NONE" }
local colors = require("fiftyshades.palette")
local BG = colors.grey50

local none_class = "FiftyShadesNone"

local hi = function(group, colors)
	vim.api.nvim_set_hl(0, group, {
		fg = colors.fg.gui,
		bg = colors.bg.gui,
		ctermfg = colors.fg.cterm,
		ctermbg = colors.bg.cterm,
	})
end

local hs = function(group, colors, style)
	local opts = {
		fg = colors.fg.gui,
		bg = colors.bg.gui,
		ctermfg = colors.fg.cterm,
		ctermbg = colors.bg.cterm,
	}

	for _, item in ipairs(style) do
		opts[item] = true
	end

	vim.api.nvim_set_hl(0, group, opts)
end

local link = function(group, link)
	vim.api.nvim_set_hl(0, group, { link = link })
end

M.base_syntax = function()
	hi(none_class, { fg = none, bg = none })
	hi("Normal", { fg = colors.grey950, bg = BG })
	hi("Comment", { fg = colors.grey600, bg = none })
	hi("String", { fg = colors.grey800, bg = none })
	hi("Character", { fg = colors.grey800, bg = none })
	hi("Number", { fg = colors.grey700, bg = none })
	hi("Boolean", { fg = colors.grey700, bg = none })
	hi("Float", { fg = colors.grey700, bg = none })
	hi("Function", { fg = colors.grey950, bg = none })
	hi("Special", { fg = colors.grey950, bg = none })
	hi("SpecialChar", { fg = colors.grey950, bg = none })
	hi("SpecialKey", { fg = colors.grey600, bg = none })
	hi("Error", { fg = colors.grey950, bg = none })

	hi("Constant", { fg = colors.grey700, bg = none })
	hi("Statement", { fg = colors.grey900, bg = none })
	hi("Conditional", { fg = colors.grey900, bg = none })
	hi("Exception", { fg = colors.grey900, bg = none })
	hi("Identifier", { fg = colors.grey950, bg = none })
	hi("Type", { fg = colors.grey900, bg = none })
	hi("Repeat", { fg = colors.grey900, bg = none })
	hi("Label", { fg = colors.grey900, bg = none })
	hi("Operator", { fg = colors.grey950, bg = none })
	hi("Keyword", { fg = colors.grey900, bg = none })
	hi("Delimiter", { fg = colors.grey950, bg = none })
	hi("Tag", { fg = colors.grey900, bg = none })
	hi("SpecialComment", { fg = colors.grey600, bg = none })
	hi("Debug", { fg = colors.grey950, bg = none })
	hi("PreProc", { fg = colors.grey900, bg = none })
	hi("Include", { fg = colors.grey900, bg = none })
	hi("Define", { fg = colors.grey900, bg = none })
	hi("Macro", { fg = colors.grey900, bg = none })
	hi("PreCondit", { fg = colors.grey900, bg = none })
	hi("StorageClass", { fg = colors.grey900, bg = none })
	hi("Structure", { fg = colors.grey900, bg = none })
	hi("Typedef", { fg = colors.grey900, bg = none })
	hi("Title", { fg = colors.grey950, bg = none })
	hi("Todo", { fg = BG, bg = colors.grey950 })
	hi("Underlined", { fg = colors.grey950, bg = none })
	hi("Ignore", { fg = colors.grey600, bg = none })
end

M.ui = function()
	local underline = { "underline" }

	hi("Cursor", { fg = BG, bg = colors.grey950 })
	hi("CursorLine", { fg = none, bg = colors.grey100 })
	hi("CursorLineNr", { fg = colors.grey950, bg = colors.grey100 })
	hi("ColorColumn", { fg = none, bg = colors.grey200 })
	hi("LineNr", { fg = colors.grey500, bg = none })
	hi("NonText", { fg = colors.grey400, bg = none })
	hi("EndOfBuffer", { fg = colors.grey300, bg = none })
	hi("VertSplit", { fg = colors.grey300, bg = none })
	hi("WinSeparator", { fg = colors.grey300, bg = none })
	hi("Folded", { fg = colors.grey700, bg = colors.grey200 })
	hi("FoldColumn", { fg = colors.grey600, bg = none })
	hi("SignColumn", { fg = none, bg = none })
	hi("Pmenu", { fg = colors.grey950, bg = colors.grey200 })
	hi("PmenuSel", { fg = BG, bg = colors.grey800 })
	hi("PmenuSbar", { fg = none, bg = colors.grey300 })
	hi("PmenuThumb", { fg = none, bg = colors.grey600 })
	hi("TabLine", { fg = colors.grey700, bg = colors.grey200 })
	hi("TabLineFill", { fg = colors.grey700, bg = colors.grey200 })
	hi("TabLineSel", { fg = colors.grey950, bg = BG })
	hi("StatusLine", { fg = colors.grey950, bg = colors.grey200 })
	hi("StatusLineNC", { fg = colors.grey600, bg = colors.grey200 })
	hi("WildMenu", { fg = BG, bg = colors.grey800 })
	hi("Visual", { fg = BG, bg = colors.grey700 })
	hi("Search", { fg = BG, bg = colors.grey600 })
	hi("IncSearch", { fg = BG, bg = colors.grey800 })
	hi("CurSearch", { fg = BG, bg = colors.grey800 })
	hi("Directory", { fg = colors.grey800, bg = none })

	hs("MatchParen", { fg = colors.grey950, bg = colors.grey300 }, underline)

	hi("ErrorMsg", { fg = colors.grey950, bg = none })
	hi("WarningMsg", { fg = colors.grey800, bg = none })
	hi("ModeMsg", { fg = colors.grey700, bg = none })
	hi("MoreMsg", { fg = colors.grey700, bg = none })
	hi("Question", { fg = colors.grey800, bg = none })
	hi("MsgArea", { fg = colors.grey950, bg = none })

	hi("DiagnosticError", { fg = colors.grey900, bg = none })
	hi("DiagnosticWarn", { fg = colors.grey700, bg = none })
	hi("DiagnosticInfo", { fg = colors.grey600, bg = none })
	hi("DiagnosticHint", { fg = colors.grey500, bg = none })

	hs("DiagnosticUnderlineError", { fg = colors.grey900, bg = none }, underline)
	hs("DiagnosticUnderlineWarn", { fg = colors.grey700, bg = none }, underline)
	hs("DiagnosticUnderlineInfo", { fg = colors.grey600, bg = none }, underline)
	hs("DiagnosticUnderlineHint", { fg = colors.grey500, bg = none }, underline)

	hi("NormalFloat", { fg = colors.grey950, bg = colors.grey100 })
	hi("FloatBorder", { fg = colors.grey400, bg = colors.grey100 })
	hi("Whitespace", { fg = colors.grey400, bg = none })
end

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
	link("luaFunction", none_class)

	-- Language: HTML
	-- Syntax: built-in
	link("htmlTag", "Special")
	link("htmlEndTag", "Special")
	link("htmlTagName", "Function")
	link("htmlSpecialTagName", "Function")
	link("htmlArg", none_class)

	-- Language: CSS
	-- Syntax: built-in
	link("cssTagName", "Function")
	link("cssColor", "Number")
	link("cssVendor", none_class)
	link("cssBraces", none_class)
	link("cssSelectorOp", none_class)
	link("cssSelectorOp2", none_class)
	link("cssIdentifier", none_class)
	link("cssClassName", none_class)
	link("cssClassNameDot", none_class)
	link("cssVendor", none_class)
	link("cssImportant", none_class)
	link("cssAttributeSelector", none_class)

	-- Language: PHP
	-- Syntax: built-in
	link("phpNullValue", "Boolean")
	link("phpSpecialFunction", "Function")
	link("phpParent", none_class)
	link("phpClasses", none_class)

	-- Language: Javascript
	-- Syntax: built-in
	link("javaScriptNumber", "Number")
	link("javaScriptNull", "Number")
	link("javaScriptBraces", none_class)
	link("javaScriptFunction", none_class)

	-- Language: Javascript
	-- Syntax: 'pangloss/vim-javascript'
	link("jsFunctionKey", "Function")
	link("jsUndefined", "Number")
	link("jsNull", "Number")
	link("jsSuper", none_class)
	link("jsThis", none_class)
	link("jsArguments", none_class)

	-- Language: Typescript
	-- Syntax: built-in
	link("typescriptImport", none_class)
	link("typescriptExport", none_class)
	link("typescriptBraces", none_class)
	link("typescriptDecorator", none_class)
	link("typescriptParens", none_class)
	link("typescriptCastKeyword", none_class)

	-- Language: JSX
	-- Syntax: 'maxmellon/vim-jsx-pretty'
	link("jsxTagName", "Function")
	link("jsxComponentName", "Function")
	link("jsxPunct", "Special")
	link("jsxCloseString", "Special")
	link("jsxEqual", "Special")
	link("jsxAttrib", none_class)

	-- Treesitter (old highlight groups)
	link("TSConstructor", none_class)
	link("TSVariableBuiltin", none_class)
	link("TSConstBuiltin", "Number")
	link("TSFuncBuiltin", "Function")
	link("luaTSPunctBracket", none_class)
	link("TSKeywordFunction", none_class)

	-- Treesitter
	link("@function.call", "Function")
	link("@function.builtin", "Function")
	link("@punctuation.bracket", none_class)
	link("@constant.builtin", "Number")
	link("@constructor", none_class)
	link("@type.css", "Function")
	link("@constructor.php", "Function")
	link("@method.vue", none_class)
	link("@tag.delimiter", "Special")
	link("@tag.attribute", none_class)
	link("@tag", "Function")
	link("@text.uri.html", "String")
end

M.init = function(name)
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	vim.opt.background = "dark"
	vim.g.colors_name = name
end

function M.setup()
	M.init("fiftyshades")
	M.base_syntax()
	M.ui()
	M.apply_links()
end

return M
