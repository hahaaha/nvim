return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup({
				hijack_cursor = true,
				update_focused_file = {
					enable = true,
					update_cwd = true,
				},
				filters = {
					dotfiles = true,
				},
				view = {
					relativenumber = true,
					number = true,
				},
				renderer = {
					indent_markers = {
						enable = true,
					},
				},
				diagnostics = {
					enable = true,
				},
			})
		end,
	},
}
