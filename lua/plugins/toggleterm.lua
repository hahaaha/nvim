return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        opts = {
            open_mapping = [[<c-\>]],
            direction = "float",
            hide_numbers = false,
            float_opts = {
            },
            on_open = function()
                vim.cmd('echo "enabled mouse"')
                vim.o.mouse = "a"
            end,
            on_close = function()
                vim.cmd('echo "disabled mouse"')
                vim.o.mouse = ""
            end,
            winbar = {
                enabled = true,
            },
        }
    }
}
