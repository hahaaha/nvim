local silent = { silent = true }
-- local builtin = require('telescope.builtin')
vim.keymap.set("n", "<A-e>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-p>", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>f", ":Telescope live_grep<cr>")
-- vim.keymap.set('n', '<C-p>', builtin.find_files, silent)

-- bufferline
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	end,
})
