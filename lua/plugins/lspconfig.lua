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
		lspconfig["tsserver"].setup({})
		lspconfig["hls"].setup({})
		lspconfig["cssls"].setup({})
		lspconfig["jsonls"].setup({})
		lspconfig["bashls"].setup({})
	end,
}
