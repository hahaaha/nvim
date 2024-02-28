return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig["lua_ls"].setup({})
		lspconfig["html"].setup({})
		lspconfig["tsserver"].setup({})
		lspconfig["hls"].setup({})
		lspconfig["cssls"].setup({})
		lspconfig["jsonls"].setup({})
		lspconfig["bashls"].setup({})
	end,
}
