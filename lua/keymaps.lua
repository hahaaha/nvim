local silent = { silent = true }
-- local builtin = require('telescope.builtin')
vim.keymap.set("n", "<A-e>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-p>", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>f", ":Telescope live_grep<cr>")
-- vim.keymap.set('n', '<C-p>', builtin.find_files, silent)

--
-- map("n", "<D-b", "NvimTreeToggle<CR>")
--

-- bufferline
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")

--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files,{})
