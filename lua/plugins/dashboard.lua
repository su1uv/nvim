return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        local header = {
            "  █████████  █████  █████ ████  █████  █████ █████   █████",
            " ███░░░░░███░░███  ░░███ ░░███ ░░███  ░░███ ░░███   ░░███ ",
            "░███    ░░░  ░███   ░███  ░███  ░███   ░███  ░███    ░███ ",
            "░░█████████  ░███   ░███  ░███  ░███   ░███  ░███    ░███ ",
            " ░░░░░░░░███ ░███   ░███  ░███  ░███   ░███  ░░███   ███  ",
            " ███    ░███ ░███   ░███  ░███  ░███   ░███   ░░░█████░   ",
            "░░█████████  ░░████████   █████ ░░████████      ░░███     ",
            " ░░░░░░░░░    ░░░░░░░░   ░░░░░   ░░░░░░░░        ░░░     ",
        }

        local pad_top = {}
        local lines = vim.o.lines or 40
        local top = math.floor((lines - #header - 12) / 2)
        for i = 1, top do
            table.insert(pad_top, "")
        end
        for _, line in ipairs(header) do
            table.insert(pad_top, line)
        end
        table.insert(pad_top, "")
        table.insert(pad_top, "")
        table.insert(pad_top, "")

        require("dashboard").setup({
            theme = "doom",
            config = {
                header = pad_top,
                center = {
                    {
                        icon = "",
                        desc = " find file      ",
                        key = "f",
                        action = "Telescope find_files",
                    },
                    {
                        icon = "",
                        desc = " recent files    ",
                        key = "r",
                        action = "Telescope oldfiles",
                    },
                    {
                        icon = "",
                        desc = " new file        ",
                        key = "n",
                        action = "enew",
                    },
                    {
                        icon = "",
                        desc = " config          ",
                        key = "c",
                        action = "edit ~/.config/nvim/init.lua",
                    },
                    {
                        icon = "",
                        desc = " quit            ",
                        key = "q",
                        action = "qa",
                    },
                },
                footer = {},
            },
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = "dashboard",
            callback = function()
                vim.opt_local.list = false
                require("ibl").setup_buffer(0, { enabled = false })
            end,
        })
    end,
}
