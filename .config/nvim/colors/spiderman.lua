-- Spider-Man colorscheme for Neovim
-- Standalone — no dependency on any other plugin.
--
-- Install:
--   Save this file as ~/.config/nvim/colors/spiderman.lua
--   Then run :colorscheme spiderman  (or vim.cmd.colorscheme("spiderman") in init.lua)

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.o.background = "dark"
vim.g.colors_name = "spiderman"

-- =====================================================================
-- Palette
-- =====================================================================
local c = {
	bg = "#242A4A",
	bg_dark = "#080A13",
	bg_float = "#0F1530",
	bg_highlight = "#141B38",
	bg_visual = "#1B2A5E",
	bg_search = "#1E3A8A",
	bg_statusline = "#0F1530",

	fg = "#F5F6FA",
	fg_dark = "#C7CCD9",
	fg_gutter = "#3A4160",

	comment = "#6B7280",
	border = "#1C2233",
	gray = "#1C2233",

	red = "#aa3b3f",
	red_bright = "#d54e50",
	orange = "#f22a1f",
	yellow = "#F4C542",
	yellow_bright = "#FFD966",
	green = "#b94242",
	green_bright = "#cb6f6f",
	cyan = "#3AB4E0",
	cyan_bright = "#5FD0F3",
	blue = "#1E3A8A",
	blue_bright = "#2F6FED",
	purple = "#7B2D8E",
	purple_bright = "#A15FC4",

	black = "#0B0E1A",
	white = "#C7CCD9",
	cursor = "#d43137",

	none = "NONE",
}

-- =====================================================================
-- Terminal colors (used by :terminal)
-- =====================================================================
vim.g.terminal_color_0 = c.black
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.purple
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.fg_dark
vim.g.terminal_color_8 = c.gray
vim.g.terminal_color_9 = c.red_bright
vim.g.terminal_color_10 = c.green_bright
vim.g.terminal_color_11 = c.yellow_bright
vim.g.terminal_color_12 = c.blue_bright
vim.g.terminal_color_13 = c.purple_bright
vim.g.terminal_color_14 = c.cyan_bright
vim.g.terminal_color_15 = c.fg

-- =====================================================================
-- Highlight groups
-- =====================================================================
---@type table<string, vim.api.keyset.highlight>
local hl = {
	-- Editor UI
	Normal = { fg = c.fg, bg = c.bg },
	NormalFloat = { fg = c.fg, bg = c.bg_float },
	NormalNC = { fg = c.fg, bg = c.bg },
	FloatBorder = { fg = c.border, bg = c.bg_float },
	FloatTitle = { fg = c.cyan, bg = c.bg_float, bold = true },

	Cursor = { fg = c.bg, bg = c.fg },
	CursorLine = { bg = c.bg_highlight },
	CursorLineNr = { fg = c.yellow_bright, bold = true },
	CursorColumn = { bg = c.bg_highlight },
	ColorColumn = { bg = c.bg_highlight },

	LineNr = { fg = c.fg_gutter },
	SignColumn = { fg = c.fg_gutter, bg = c.bg },
	Folded = { fg = c.comment, bg = c.bg_highlight },
	FoldColumn = { fg = c.fg_gutter, bg = c.bg },

	VertSplit = { fg = c.border },
	WinSeparator = { fg = c.border },

	Visual = { bg = c.bg_visual },
	VisualNOS = { bg = c.bg_visual },

	Search = { fg = c.bg, bg = c.yellow },
	IncSearch = { fg = c.bg, bg = c.orange },
	CurSearch = { fg = c.bg, bg = c.orange },

	Pmenu = { fg = c.fg_dark, bg = c.bg_float },
	PmenuSel = { fg = c.fg, bg = c.bg_visual, bold = true },
	PmenuSbar = { bg = c.bg_highlight },
	PmenuThumb = { bg = c.fg_gutter },

	StatusLine = { fg = c.fg, bg = c.bg_statusline },
	StatusLineNC = { fg = c.comment, bg = c.bg_statusline },
	TabLine = { fg = c.comment, bg = c.bg_dark },
	TabLineFill = { bg = c.bg_dark },
	TabLineSel = { fg = c.fg, bg = c.bg_highlight, bold = true },

	MatchParen = { fg = c.red_bright, bold = true, underline = true },
	NonText = { fg = c.fg_gutter },
	Whitespace = { fg = c.fg_gutter },
	EndOfBuffer = { fg = c.bg },

	Directory = { fg = c.blue_bright, bold = true },
	Title = { fg = c.red_bright, bold = true },
	ModeMsg = { fg = c.fg, bold = true },
	MoreMsg = { fg = c.cyan },
	Question = { fg = c.cyan },
	WarningMsg = { fg = c.orange },
	ErrorMsg = { fg = c.red_bright, bold = true },

	WinBar = { fg = c.fg_dark, bg = c.bg },
	WinBarNC = { fg = c.comment, bg = c.bg },

	-- Syntax
	Comment = { fg = c.comment, italic = true },
	Constant = { fg = c.orange },
	String = { fg = c.green },
	Character = { fg = c.green },
	Number = { fg = c.orange },
	Boolean = { fg = c.orange, bold = true },
	Float = { fg = c.orange },

	Identifier = { fg = c.fg },
	Function = { fg = c.blue_bright, bold = true },

	Statement = { fg = c.red_bright },
	Conditional = { fg = c.red_bright },
	Repeat = { fg = c.red_bright },
	Label = { fg = c.red_bright },
	Operator = { fg = c.fg_dark },
	Keyword = { fg = c.red_bright, bold = true },
	Exception = { fg = c.red_bright },

	PreProc = { fg = c.purple_bright },
	Include = { fg = c.purple_bright },
	Define = { fg = c.purple_bright },
	Macro = { fg = c.purple_bright },
	PreCondit = { fg = c.purple_bright },

	Type = { fg = c.cyan_bright },
	StorageClass = { fg = c.cyan_bright },
	Structure = { fg = c.cyan_bright },
	Typedef = { fg = c.cyan_bright },

	Special = { fg = c.yellow_bright },
	SpecialChar = { fg = c.yellow_bright },
	Tag = { fg = c.red_bright },
	Delimiter = { fg = c.fg_dark },
	SpecialComment = { fg = c.comment, bold = true },
	Debug = { fg = c.red_bright },

	Underlined = { underline = true },
	Ignore = { fg = c.comment },
	Error = { fg = c.red_bright, bold = true },
	Todo = { fg = c.bg, bg = c.yellow_bright, bold = true },

	-- Diagnostics
	DiagnosticError = { fg = c.red_bright },
	DiagnosticWarn = { fg = c.orange },
	DiagnosticInfo = { fg = c.cyan },
	DiagnosticHint = { fg = c.blue_bright },
	DiagnosticOk = { fg = c.green },

	DiagnosticVirtualTextError = { fg = c.red_bright, bg = c.bg_highlight },
	DiagnosticVirtualTextWarn = { fg = c.orange, bg = c.bg_highlight },
	DiagnosticVirtualTextInfo = { fg = c.cyan, bg = c.bg_highlight },
	DiagnosticVirtualTextHint = { fg = c.blue_bright, bg = c.bg_highlight },

	DiagnosticUnderlineError = { undercurl = true, sp = c.red_bright },
	DiagnosticUnderlineWarn = { undercurl = true, sp = c.orange },
	DiagnosticUnderlineInfo = { undercurl = true, sp = c.cyan },
	DiagnosticUnderlineHint = { undercurl = true, sp = c.blue_bright },

	-- LSP
	LspReferenceText = { bg = c.bg_highlight },
	LspReferenceRead = { bg = c.bg_highlight },
	LspReferenceWrite = { bg = c.bg_highlight },
	LspSignatureActiveParameter = { fg = c.yellow_bright, bold = true },
	LspInlayHint = { fg = c.comment, bg = c.bg_highlight },

	-- Diff
	DiffAdd = { fg = c.green_bright, bg = c.bg_highlight },
	DiffChange = { fg = c.blue_bright, bg = c.bg_highlight },
	DiffDelete = { fg = c.red_bright, bg = c.bg_highlight },
	DiffText = { fg = c.yellow_bright, bg = c.bg_visual },

	-- Git signs
	GitSignsAdd = { fg = c.green_bright },
	GitSignsChange = { fg = c.blue_bright },
	GitSignsDelete = { fg = c.red_bright },
	GitSignsCurrentLineBlame = { fg = c.comment },

	-- Treesitter
	["@variable"] = { fg = c.fg },
	["@variable.builtin"] = { fg = c.red_bright, italic = true },
	["@variable.parameter"] = { fg = c.orange },
	["@variable.member"] = { fg = c.fg_dark },

	["@constant"] = { fg = c.orange },
	["@constant.builtin"] = { fg = c.orange, bold = true },
	["@constant.macro"] = { fg = c.purple_bright },

	["@module"] = { fg = c.cyan_bright },
	["@label"] = { fg = c.red_bright },

	["@string"] = { fg = c.green },
	["@string.escape"] = { fg = c.yellow_bright },
	["@string.special"] = { fg = c.yellow_bright },
	["@character"] = { fg = c.green },
	["@character.special"] = { fg = c.yellow_bright },

	["@number"] = { fg = c.orange },
	["@boolean"] = { fg = c.orange, bold = true },
	["@float"] = { fg = c.orange },

	["@function"] = { fg = c.blue_bright, bold = true },
	["@function.builtin"] = { fg = c.blue_bright, italic = true },
	["@function.macro"] = { fg = c.purple_bright },
	["@method"] = { fg = c.blue_bright, bold = true },
	["@constructor"] = { fg = c.cyan_bright },

	["@parameter"] = { fg = c.orange, italic = true },

	["@keyword"] = { fg = c.red_bright, bold = true },
	["@keyword.function"] = { fg = c.red_bright, bold = true },
	["@keyword.operator"] = { fg = c.red_bright },
	["@keyword.return"] = { fg = c.red_bright, bold = true },
	["@keyword.import"] = { fg = c.purple_bright },
	["@conditional"] = { fg = c.red_bright },
	["@repeat"] = { fg = c.red_bright },
	["@exception"] = { fg = c.red_bright },

	["@operator"] = { fg = c.fg_dark },
	["@punctuation.delimiter"] = { fg = c.fg_dark },
	["@punctuation.bracket"] = { fg = c.fg_dark },
	["@punctuation.special"] = { fg = c.yellow_bright },

	["@comment"] = { fg = c.comment, italic = true },
	["@comment.todo"] = { fg = c.bg, bg = c.yellow_bright, bold = true },
	["@comment.warning"] = { fg = c.bg, bg = c.orange, bold = true },
	["@comment.error"] = { fg = c.bg, bg = c.red_bright, bold = true },

	["@type"] = { fg = c.cyan_bright },
	["@type.builtin"] = { fg = c.cyan_bright, italic = true },
	["@attribute"] = { fg = c.purple_bright },
	["@property"] = { fg = c.fg_dark },

	["@tag"] = { fg = c.red_bright },
	["@tag.attribute"] = { fg = c.orange, italic = true },
	["@tag.delimiter"] = { fg = c.fg_dark },

	["@markup.heading"] = { fg = c.red_bright, bold = true },
	["@markup.strong"] = { fg = c.fg, bold = true },
	["@markup.italic"] = { fg = c.fg, italic = true },
	["@markup.link"] = { fg = c.cyan_bright, underline = true },
	["@markup.raw"] = { fg = c.green },

	-- Telescope
	TelescopeBorder = { fg = c.border, bg = c.bg_float },
	TelescopeNormal = { fg = c.fg, bg = c.bg_float },
	TelescopeSelection = { bg = c.bg_visual, fg = c.fg, bold = true },
	TelescopeMatching = { fg = c.yellow_bright, bold = true },
	TelescopePromptPrefix = { fg = c.red_bright },
	TelescopeTitle = { fg = c.cyan_bright, bold = true },

	-- Which-key
	WhichKey = { fg = c.red_bright, bold = true },
	WhichKeyGroup = { fg = c.blue_bright },
	WhichKeyDesc = { fg = c.fg },
	WhichKeySeparator = { fg = c.comment },
	WhichKeyFloat = { bg = c.bg_float },
}

for group, opts in pairs(hl) do
	vim.api.nvim_set_hl(0, group, opts)
end