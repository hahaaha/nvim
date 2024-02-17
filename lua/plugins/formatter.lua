return {
    "mhartington/formatter.nvim",
    config = function ()
         require("formatter").setup {
            filetype = {
                lua = {
                    require("formatter.filetypes.lua").stylua,
                },
                typescriptreact = {
                   require("formatter.filetypes.typescriptreact").prettier
                }
            }
        }
    end
}
