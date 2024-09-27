-- tab
vim.opt.tabstop = 4     -- number of visual spaces per TAB
vim.opt.shiftwidth = 4  -- insert 4 spaces on a tab
vim.opt.softtabstop = 4 -- number of spacesin tab when editing
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.number = true

-- fold
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
-- 不可见字符
vim.o.list = true
vim.o.listchars = "tab:>~,space:·"
vim.opt.fileformat = "unix"
-- mouse
vim.opt.mouse = ""

-- 在最后一行的时候自动滚动
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- UI

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local lspui_ok, lspui = pcall(require, "lspconfig.ui.windows")
if not lspui_ok then
    return
end

vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
