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
vim.opt.signcolumn = "yes"

vim.g.mapleader = " "


vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
vim.keymap.set({ "i", "x", "n", "s" }, "<C-q>", "<cmd>wq<cr><esc>", { desc = "Save and quit" })
vim.keymap.set("n", "<Escape>", "<CMD>nohlsearch<CR>", { desc = "Clear search highlights" })
vim.keymap.set("n", "<leader>l", "<CMD>Lazy<CR>", { desc = "Lazy" })
vim.keymap.set("n", "L", "<CMD>bnext<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "H", "<CMD>bprevious<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<space>bb", "<CMD>bdelete<CR>", { desc = "Close buffer" })

-- copied from old config
local opts = { noremap = true, silent = true }

-- move highlights up and down
vim.keymap.set("v", "<pagedown>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<pageup>", ":m '<-2<CR>gv=gv")

-- keep cursor positon when folding lines
vim.keymap.set("n", "J", "mzJ`z")

-- use leader + arrows to move windows
vim.keymap.set("n", "<leader><left>", "<C-w>h", opts)
vim.keymap.set("n", "<leader><down>", "<C-w>j", opts)
vim.keymap.set("n", "<leader><up>", "<C-w>k", opts)
vim.keymap.set("n", "<leader><right>", "<C-w>l", opts)

-- stay in visual mode when indenting
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- intuitive increment/decrement
vim.keymap.set("n", "+", "<C-a>")
-- vim.keymap.set("n", "-", "<C-x>")

-- select all lines in a file
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- "move" buffers
vim.keymap.set("n", "<leader>m", "<cmd>BufferLinePick<cr>")
