return {
    "stevearc/conform.nvim",
    opts = {
        lua = { "stylua" },
        typescriptreact = { "prettier" },
        typescript = { "prettier" },
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            lsp_fallback = true,
        },
    },
}
