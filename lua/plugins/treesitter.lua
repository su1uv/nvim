return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = {
                "typescript", "javascript", "tsx",
                "go", "rust", "python", "java",
                "html", "css", "bash",
                "json", "yaml", "toml", "lua",
            },
        })
        vim.opt.foldmethod = "expr"
        vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.opt.foldenable = false
    end,
}
