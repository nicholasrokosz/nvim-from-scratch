return {
    'echasnovski/mini.files',
    version = '*',
    config = function ()
        require('mini.files').setup()
        vim.keymap.set("n", "-", "<CMD>lua MiniFiles.open()<CR>", { desc = "Open parent directory" })
    end
}
