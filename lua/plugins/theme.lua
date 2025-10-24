return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    config = function()
        -- Detect system dark/light mode
        local function is_dark_mode()
            local handle = io.popen("gsettings get org.gnome.desktop.interface color-scheme")
            if handle then
                local result = handle:read("*a")
                handle:close()
                return result:match("dark") ~= nil
            end
            return false
        end

        -- Set Catppuccin flavor based on system preference
        vim.g.catppuccin_flavour = is_dark_mode() and "mocha" or "latte"

        -- Apply colorscheme
        vim.cmd.colorscheme("catppuccin")
        vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    end
}
