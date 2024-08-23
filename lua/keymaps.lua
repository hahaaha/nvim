local silent = { silent = true }
vim.g.mapleader = " "
-- local builtin = require('telescope.builtin')
vim.keymap.set("n", "<A-e>", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>")
vim.keymap.set("n", "<leader>f", "<cmd>Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>v", "<cmd>Telescope git_status<cr>")
-- vim.keymap.set('n', '<C-p>', builtin.find_files, silent)

-- bufferline
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader><Tab>", "<cmd>BufferLineCyclePrev<CR>")

-- vim.api.nvim_create_autocmd("LspAttach", {
--     callback = function(ev)
--         local opts = { buffer = ev.buf }
--         vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
--     end,
-- })
--

-- copy
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>p", '"+p')

-- lspsaga
-- diagnostic
vim.keymap.set("n", "[n", "<cmd>Lspsaga diagnostic_jump_next<CR>")
vim.keymap.set("n", "[lspk", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
-- definition
vim.keymap.set("n", "gpd", "<cmd>Lspsaga peek_definition<CR>")
vim.keymap.set("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
vim.keymap.set("n", "got", "<cmd>Lspsaga goto_type_definition<CR>")
-- code action
vim.keymap.set("n", "[e", "<cmd>Lspsaga code_action<CR>")
vim.keymap.set("n", "[r", "<cmd>Lspsaga finder<CR>")

-- trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>")

-- icn-rename
vim.keymap.set("n", "<leader>rn", function()
    return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })
