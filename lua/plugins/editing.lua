return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup()
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require("ibl").setup({
                indent = {
                    char = "│",
                    highlight = { "IblIndent" },
                },
                scope = {
                    enabled = true,
                    char = "│",
                    highlight = { "IblScope" },
                },
            })
            vim.api.nvim_set_hl(0, "IblIndent", { fg = "#111111" })
            vim.api.nvim_set_hl(0, "IblScope", { fg = "#333333" })
        end,
    },
    {
        "numToStr/Comment.nvim",
        keys = {
            { "gcc", mode = "n" },
            { "gc", mode = "v" },
        },
        config = function()
            require("Comment").setup()
        end,
    },
}
