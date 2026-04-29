vim.g.loaded_netrw = 1

require("oil").setup({
    default_file_explorer = true,
    use_default_keymaps = true,
})

vim.api.nvim_create_user_command("Explore", "Oil <args>", { nargs = "?", complete = "dir" })
vim.api.nvim_create_user_command("E", "Explore <args>", { nargs = "?", complete = "dir" })

vim.api.nvim_create_user_command("Sexplore", function(opts)
    local cmd = opts.bang and "topleft vsplit" or "topleft split"
    vim.cmd(cmd)
    require("oil").open(opts.args ~= "" and opts.args or nil)
end, { nargs = "?", complete = "dir", bang = true })
vim.api.nvim_create_user_command("Vexplore", "rightbelow vsplit | Oil <args>", { nargs = "?", complete = "dir" })
vim.api.nvim_create_user_command("Texplore", "tabedit % | Oil <args>", { nargs = "?", complete = "dir" })
