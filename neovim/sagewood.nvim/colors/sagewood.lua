-- Clear previous highlights and set engine tracking variables
if vim.g.colors_name then
  vim.cmd("highlight clear")
end
vim.o.termguicolors = true
vim.g.colors_name = "sagewood"

local palette = require("sagewood.palette")

local function set_hl(group, options)
  vim.api.nvim_set_hl(0, group, options)
end

-- Native UI Layout Mappings
set_hl("Normal",       { fg = palette.fg, bg = palette.bg })
set_hl("NormalFloat",  { fg = palette.fg, bg = palette.crust })
set_hl("Visual",       { bg = palette.surface })
set_hl("CursorLine",   { bg = palette.surface })
set_hl("LineNr",       { fg = palette.muted })
set_hl("CursorLineNr", { fg = palette.green, bold = true })
set_hl("SignColumn",   { bg = palette.bg })
set_hl("StatusLine",   { fg = palette.fg, bg = palette.crust })
set_hl("StatusLineNC", { fg = palette.muted, bg = palette.crust })
set_hl("WinSeparator", { fg = palette.crust, bg = palette.crust })

-- Standard Code Mappings
set_hl("Comment",      { fg = palette.muted, italic = true })
set_hl("Keyword",      { fg = palette.red, bold = true })
set_hl("Statement",    { fg = palette.red, bold = true })
set_hl("Function",     { fg = palette.blue })
set_hl("String",       { fg = palette.yellow })
set_hl("Number",       { fg = palette.magenta })
set_hl("Boolean",      { fg = palette.magenta })
set_hl("Type",         { fg = palette.green })

-- Modern Tree-sitter Token Mappings
set_hl("@keyword",     { fg = palette.red, bold = true })
set_hl("@function",    { fg = palette.blue })
set_hl("@string",      { fg = palette.yellow })
set_hl("@comment",     { fg = palette.muted, italic = true })
set_hl("@type",        { fg = palette.green })
set_hl("@variable",    { fg = palette.fg })
