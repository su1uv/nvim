return {
    "nvim-telescope/telescope.nvim",
    branch = "master",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("telescope").setup({
            defaults = {
                borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
                layout_strategy = "horizontal",
                prompt_prefix = " ",
                selection_caret = " ",
                sorting_strategy = "ascending",
                layout_config = {
                    prompt_position = "top",
                    horizontal = {
                        preview_width = 0.55,
                        results_width = 0.45,
                    },
                    width = 0.85,
                    height = 0.80,
                },
            },
        })

        local hl = vim.api.nvim_set_hl
        hl(0, "TelescopeBorder", { fg = "#403d52", bg = "NONE" })
        hl(0, "TelescopePromptBorder", { fg = "#c4a7e7", bg = "NONE" })
        hl(0, "TelescopeResultsBorder", { fg = "#403d52", bg = "NONE" })
        hl(0, "TelescopePreviewBorder", { fg = "#403d52", bg = "NONE" })
        hl(0, "TelescopeTitle", { fg = "#c4a7e7", bold = true })
        hl(0, "TelescopePromptPrefix", { fg = "#c4a7e7" })
        hl(0, "TelescopeMatching", { fg = "#ebbcba", bold = true })
        hl(0, "TelescopeSelection", { fg = "#e0def4", bg = "#1f1d2e", bold = true })

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Live grep" })
        vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Buffers" })
    end,
}
