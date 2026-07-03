-- Opciones base
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8
vim.opt.updatetime = 250
vim.opt.cursorline = true
vim.opt.showmode = false
vim.opt.laststatus = 0
vim.opt.fillchars = { eob = " " }
vim.opt.winborder = "rounded"

-- Keybinds globales
vim.keymap.set("n", "<leader><leader>", function()
	require("telescope.builtin").find_files()
end, { desc = "Find files" })
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit neovim" })

-- Bootstrap lazy.nvim (plugin manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins", {
	ui = { border = "single" },
	change_detection = { notify = false },
})

require("nvim-treesitter").install({ "rust", "javascript", "zig", "python", "go", "html", "make", "toml", "sql" })

vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		pcall(vim.treesitter.start)
	end,
})
