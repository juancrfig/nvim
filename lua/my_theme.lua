-- Custom Color Palette
local background = "#1A0A21"
local foreground = "#C7B5B6"
local main_accent = "#FF5733"   -- Keywords/Statements
local secondary_accent = "#FFC300" -- Strings/Functions
local comment_color = "#8A798C" -- A subtle color for comments/line numbers
local selection_color = "#3A2C3A"
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
set_hl("CursorLineNr", main_accent, selection_color)
set_hl("LineNr", comment_color, "NONE")
set_hl("SignColumn", foreground, "NONE")
set_hl("NonText", comment_color, "NONE")
set_hl("Search", nil, secondary_accent) -- Search highlight
set_hl("IncSearch", nil, main_accent) -- Incremental search highlight

set_hl("LineNrAbove", comment_color, "NONE")
set_hl("LineNrBelow", comment_color, "NONE")

-- 2. Syntax Highlighting
set_hl("Comment", comment_color, nil, "italic")
set_hl("Keyword", main_accent, nil, "bold")
set_hl("Statement", main_accent, nil, "bold")
set_hl("Type", main_accent, nil)
set_hl("Function", secondary_accent, nil)
set_hl("String", secondary_accent, nil)
set_hl("Constant", secondary_accent, nil)
set_hl("Number", secondary_accent, nil)
set_hl("Identifier", foreground, nil)

-- 3. Nvim-tree highlights
set_hl("NvimTreeNormal", nil, "NONE")
set_hl("NvimTreeNormalNC", nil, "NONE")
set_hl("NvimTreeCursorLine", selection_color, "#FFC300")
set_hl("NvimTreeEndOfBuffer", background, nil)
