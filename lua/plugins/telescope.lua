return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("telescope").setup()
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader><space>', builtin.find_files, { desc = "Find files" })
            vim.keymap.set('n', '<leader>/', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        end,
    },
    -- Not working currently, likely due to nvim version
    -- {
    --     "nvim-telescope/telescope-ui-select.nvim",
    --     config = function()
    --         require("telescope").setup {
    --             extensions = {
    --                 ["ui-select"] = {
    --                     require("telescope.themes").get_dropdown {
    --                     }
    --                 }
    --             }
    --         }
    --         require("telescope").load_extension("ui-select")
    --     end
    -- }
}
