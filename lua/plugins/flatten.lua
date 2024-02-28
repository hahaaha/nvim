return {
	{
		"willothy/flatten.nvim",
		-- or pass configuration with
		opts = {
            window = {open = "alternate"}
        },
        lazy = false,
        priority = 1001,
		-- Ensure that it runs first to minimize delay when opening file from terminal
	},
}
