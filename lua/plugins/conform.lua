return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua        = { "stylua" },
                -- Confo    rm will run multiple formatters sequentially
                python     = { "isort", "black" },
                -- You can custo    mize some of the format options for the filetype (:help conform.format)
                rust       = { "rustfmt", lsp_format = "fallback" },
                -- Conform will run the first available formatter
                javascript = { "prettierd", "prettier", stop_after_first = true },

                go         = { "gofmt" },
            },
            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 500,
                lsp_format = "fallback",
            },
        })
    end,
}
