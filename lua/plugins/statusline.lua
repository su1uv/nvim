return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                theme = "auto",
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
