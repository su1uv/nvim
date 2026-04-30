return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local custom_theme = {
            normal = {
                a = { bg = "#1a1a1a", fg = "#ffffff", gui = "bold" },
                b = { bg = "#000000", fg = "#888888" },
                c = { bg = "#000000", fg = "#555555" },
            },
            insert = {
                a = { bg = "#1a1a1a", fg = "#98c379", gui = "bold" },
            },
            visual = {
                a = { bg = "#1a1a1a", fg = "#61afef", gui = "bold" },
            },
            command = {
                a = { bg = "#1a1a1a", fg = "#e5c07b", gui = "bold" },
            },
            inactive = {
                a = { bg = "#000000", fg = "#333333" },
                b = { bg = "#000000", fg = "#333333" },
                c = { bg = "#000000", fg = "#333333" },
            },
        }

        require("lualine").setup({
            options = {
                theme = custom_theme,
                icons_enabled = false,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            },
            sections = {},
            inactive_sections = {},
            tabline = {
                lualine_a = { { "mode", fmt = function(s) return s:sub(1, 3) end } },
                lualine_b = { { "branch", fmt = function(s) return s ~= "" and "@ " .. s or "" end } },
                lualine_c = { { "filename", path = 1 } },
                lualine_x = { "diagnostics" },
                lualine_y = { "filetype" },
                lualine_z = {},
            },
        })
    end,
}
