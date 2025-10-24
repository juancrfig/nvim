-- Custom Color Palette
local background = "#1A0A21"
local foreground = "#C7B5B6"
local comment_color = "#8A798C"
local selection_color = "#3A2C3A"

-- Expanded accent colors for Treesitter
local accent_red = "#FF5733"      -- Keywords, Statements
local accent_yellow = "#FFC300"  -- Functions, Strings
local accent_orange = "#D35400"    -- Types, Numbers
local accent_blue = "#0040E0"     -- Function calls, Variables
local accent_purple = "#9B00CC"   -- Parameters, Constants
local accent_green = "#27B35D"

-- Clear existing highlights and set general options
vim.cmd.hi("clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.g.colors_name = "custom_colorscheme" -- Set the name

-- Helper function to set a highlight group
local function set_hl(group, fg, bg, style)
    local hl_opts = { fg = fg, bg = bg }
    if style == "italic" then
        hl_opts.italic = true
    elseif style == "bold" then
        hl_opts.bold = true
    elseif style == "bold,italic" or style == "italic,bold" then
        hl_opts.bold = true
        hl_opts.italic = true
    end
    vim.api.nvim_set_hl(0, group, hl_opts)
end

-- 1. General UI and Text
set_hl("Normal", foreground, "NONE")
set_hl("NormalFloat", foreground, "NONE")
set_hl("Visual", foreground, selection_color)
set_hl("CursorLine", nil, selection_color)
set_hl("CursorLineNr", accent_red, selection_color)
set_hl("LineNr", comment_color, "NONE")
set_hl("SignColumn", foreground, "NONE")
set_hl("NonText", comment_color, "NONE")
set_hl("Search", nil, accent_yellow) -- Search highlight
set_hl("IncSearch", nil, accent_red) -- Incremental search highlight
set_hl("LineNrAbove", comment_color, "NONE")
set_hl("LineNrBelow", comment_color, "NONE")

-- 2. Legacy Syntax Highlighting
set_hl("Comment", comment_color, nil, "italic")
set_hl("Keyword", accent_red, nil, "bold")
set_hl("Statement", accent_red, nil, "bold")
set_hl("Type", accent_yellow, nil)
set_hl("Function", accent_blue, nil)
set_hl("String", accent_yellow, nil)
set_hl("Constant", accent_purple, nil)
set_hl("Number", accent_green, nil)
set_hl("Identifier", accent_blue, nil)

-- 3. Nvim-tree highlights
set_hl("NvimTreeNormal", nil, "NONE")
set_hl("NvimTreeNormalNC", nil, "NONE")
set_hl("NvimTreeCursorLine", selection_color, "#FFC300")
set_hl("NvimTreeEndOfBuffer", background, nil)

-- 4. Treesitter Highlights (NEW)
-- Using the '@' syntax
set_hl("@comment", comment_color, nil, "italic")

-- Keywords and Operators
set_hl("@keyword", accent_red, nil, "bold")
set_hl("@conditional", accent_red, nil, "bold")
set_hl("@repeat", accent_red, nil, "bold")
set_hl("@operator", accent_red, nil)

-- Functions and Calls
set_hl("@function", accent_blue, nil)
set_hl("@function.call", accent_blue, nil)
set_hl("@method", accent_blue, nil)
set_hl("@method.call", accent_blue, nil)

-- Types
set_hl("@type", accent_blue, nil)
set_hl("@type.definition", accent_blue, nil, "bold")

-- Variables, Parameters, and Properties
set_hl("@variable", foreground, nil)
set_hl("@parameter", accent_purple, nil, "italic")
set_hl("@property", foreground, nil) -- Struct fields

-- Literals
set_hl("@string", accent_yellow, nil)
set_hl("@number", accent_green, nil)
set_hl("@constant", accent_purple, nil)
set_hl("@constant.builtin", accent_purple, nil, "bold")

-- Text
set_hl("@punctuation.bracket", foreground, nil)
set_hl("@tag", accent_red, nil)
set_hl("@tag.attribute", accent_blue, nil)
