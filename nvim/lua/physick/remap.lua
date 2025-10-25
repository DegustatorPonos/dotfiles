IsTransparent = false
function ToggleVisibility() 
    if not IsTransparent then 
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        IsTransparent = true
    else 
        vim.cmd('colorscheme '..vim.g.colors_name)
        IsTransparent = false
    end
end

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("x", "p", "P")
vim.keymap.set("x", "P", "p")
vim.keymap.set("v", "v", "<C-v>")

vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz',  { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-j>', ':cnext<CR>',  { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':cprev<CR>',  { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>t', ':Themery<CR>',  { noremap = true, silent = true })

vim.keymap.set("n", "<C-t>t", ToggleVisibility)
vim.keymap.set("n", "<C-t><C-t>", ToggleVisibility)
