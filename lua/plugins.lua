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
require("lazy").setup({
    {
        'projekt0n/github-nvim-theme',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            vim.cmd('colorscheme github_light')
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        -- lazy = false,
        -- priority = 1000,
        -- config = function()
        --     vim.cmd('colorscheme catppuccin-latte')
        -- end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "typescript"},
                auto_install = true,
                highlight = {
                    enable = true
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Leader>ss", -- set to `false` to disable one of the mappings
                        node_incremental = "<Leader>si",
                        scope_incremental = "<Leader>sg",
                        node_decremental = "<Leader>sd",
                    },
                },
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@comment.outer",
                            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
                            ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
                        },
                        selection_modes = {
                            ['@parameter.outer'] = 'v', -- charwise
                            ['@function.outer'] = 'V', -- linewise
                            ['@class.outer'] = '<c-v>', -- blockwise
                        },
                        include_surrounding_whitespace = false,
                    },
                },
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",

    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("telescope").setup()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        end,
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
        config = function()
            require("Comment").setup()
        end,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("todo-comments").setup()
        end,
    },
    {
        "karb94/neoscroll.nvim",
        config = function ()
            require('neoscroll').setup()
        end
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },
    -- {
    --     'stevearc/oil.nvim',
    --     opts = {},
    --     dependencies = { "nvim-tree/nvim-web-devicons" },
    -- }
    {
        'echasnovski/mini.files',
        version = '*',
        config = function ()
            require('mini.files').setup()
        end
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {}
    },
    {
        'lewis6991/gitsigns.nvim',
        config = function ()
            require('gitsigns').setup()
        end
    },
})
