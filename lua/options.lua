-- run :options to see available config options
vim.opt.number = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0              -- uses tabstop value
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8               -- consider 999
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.undofile = true


vim.g.mapleader = " "


vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
