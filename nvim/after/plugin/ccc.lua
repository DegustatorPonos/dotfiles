-- Enable true color
vim.opt.termguicolors = true

local ccc = require("ccc")
local mapping = ccc.mapping

ccc.setup({
    alpha_show = "show",
    highlighter = {
        auto_enable = true,
        lsp = true,
    },
})

vim.keymap.set('n', '<leader>c', ':CccPick<CR>')
vim.keymap.set('n', '<leader>C', ':CccConvert<CR>')
