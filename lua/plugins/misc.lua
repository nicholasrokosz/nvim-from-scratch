return {
	{
		"numToStr/Comment.nvim",
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
		config = function()
			require("neoscroll").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},
	-- Lua
	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		opts = {},
	},
	-- {
	--     'romgrk/barbar.nvim',
	--     dependencies = {
	--         'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
	--         'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
	--     },
	--     init = function() vim.g.barbar_auto_setup = false end,
	--     opts = {
	--         sidebar_filetypes = {
	--             ['neo-tree'] = {event = 'BufWipeout'},
	--         },
	--         letters = 'neiotsramgNEIOTSRAMG',
	--     },
	--     version = '^1.0.0', -- optional: only update when a new 1.x version is released
	-- },
}
