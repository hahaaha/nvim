return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")

        lspconfig["lua_ls"].setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })
        lspconfig["html"].setup({})
        lspconfig["ts_ls"].setup({})
        lspconfig["hls"].setup({})

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true
        lspconfig["cssls"].setup({
            capabilities = capabilities,
        })
        lspconfig["tailwindcss"].setup({})
        lspconfig["jsonls"].setup({})
        lspconfig["bashls"].setup({})
        lspconfig["cssmodules_ls"].setup({})
        lspconfig["clangd"].setup({})
        lspconfig["prismals"].setup({})
        lspconfig["rust_analyzer"].setup({})
        lspconfig["vuels"].setup({})
        lspconfig["eslint"].setup({})
        -- lspconfig["volar"].setup({})
    end,
}
