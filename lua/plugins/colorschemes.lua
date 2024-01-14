return {
    {
        "mcchrish/zenbones.nvim",
        dependencies = { "rktjmp/lush.nvim" },
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            vim.opt.bg = "light"
            vim.cmd.colorscheme 'neobones'
        end,
    },
    {
        'projekt0n/github-nvim-theme',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        -- priority = 1000, -- make sure to load this before all the other start plugins
        -- config = function()
        --     vim.cmd.colorscheme 'github_light'
        -- end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
}
