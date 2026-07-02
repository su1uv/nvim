-- lua/plugins/rose-pine.lua
return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({})
        vim.cmd("colorscheme rose-pine")
    end
}


-- return {
--     "zenbones-theme/zenbones.nvim",
--     dependencies = { "rktjmp/lush.nvim" },
--     lazy = false,
--     priority = 1000,
--     init = function()
--         vim.opt.background = "dark"
--
--         vim.api.nvim_create_autocmd("ColorScheme", {
--             pattern = "zenwritten",
--             callback = function()
--                 local set = vim.api.nvim_set_hl
--                 local groups = {
--                     "Normal", "NormalNC", "NormalFloat", "FloatBorder",
--                     "SignColumn", "LineNr", "CursorLineNr", "EndOfBuffer",
--                     "StatusLine", "StatusLineNC", "TabLine", "TabLineFill",
--                     "WinSeparator", "Pmenu",
--                     "TelescopeNormal", "TelescopeBorder",
--                     "TelescopePromptNormal", "TelescopePromptBorder",
--                     "TelescopeResultsNormal", "TelescopeResultsBorder",
--                     "TelescopePreviewNormal", "TelescopePreviewBorder",
--                 }
--                 for _, g in ipairs(groups) do
--                     local hl = vim.api.nvim_get_hl(0, { name = g })
--                     hl.bg = "#000000"
--                     set(0, g, hl)
--                 end
--                 set(0, "PmenuSel", { bg = "#1a1a1a" })
--             end,
--         })
--
--         vim.cmd.colorscheme("zenwritten")
--     end,
-- }
