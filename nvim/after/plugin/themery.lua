require("themery").setup({
    themes = vim.fn.getcompletion("", "color"),-- {"base16-0x96f", "mudworld"}, 
    livePreview = true,
    globalBefore = [[
    -- vim.cmd.colorscheme("everforest")
    ]],
    globalAfter = [[
    -- vim.cmd.colorscheme("everforest")
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    ]]
})
