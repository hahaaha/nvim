local silent = { silent = true }
-- local builtin = require('telescope.builtin')
vim.keymap.set("n", "<A-e>", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>f", "<cmd>Telescope live_grep<cr>")
-- vim.keymap.set('n', '<C-p>', builtin.find_files, silent)

-- bufferline
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader><Tab>", "<cmd>BufferLineCyclePrev<CR>")

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    end,
})

-- lspsaga
-- diagnostic
vim.keymap.set("n", "[n", "<cmd>Lspsaga diagnostic_jump_next<CR>")
vim.keymap.set("n", "[lspk", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
vim.keymap.set("n", "gpd", "<cmd>Lspsaga peek_definition<CR>")
-- code action
vim.keymap.set("n", "[e", "<cmd>Lspsaga code_action<CR>")
