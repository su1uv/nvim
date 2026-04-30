return {
    "nvim-telescope/telescope.nvim",
    branch = "master",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("telescope").setup({
            defaults = {
                borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                layout_strategy = "horizontal",
                prompt_prefix = "> ",
                selection_caret = "  ",
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

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find files" })
        vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Live grep" })
        vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Buffers" })
    end,
}
