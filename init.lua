require("options")


-- sets up lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath) -- same as vim.opt.rtp.prepend(vim.opt.rtp, lazypath)


-- entrypoint is lazypath/lua/lazy/init.lua
require("lazy").setup("plugins")
