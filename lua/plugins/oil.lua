return {
    "stevearc/oil.nvim",
    config = function()
        require("oil").setup({
            default_file_explorer = true,
            columns = {},
            view_options = {
                show_hidden = true,
            },
            float = {
                border = "single",
            },
            keymaps = {
                ["q"] = "actions.close",
                ["<CR>"] = "actions.select",
                ["-"] = "actions.parent",
                ["_"] = "actions.open_cwd",
            },
        })

        vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })
    end,
}
