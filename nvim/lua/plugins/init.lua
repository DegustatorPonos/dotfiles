return {
    {"RRethy/base16-nvim"},
    {"ellisonleao/gruvbox.nvim"},
    {"RRethy/base16-nvim"},
    { 'nvim-treesitter/nvim-treesitter', lazy = false, build = ':TSUpdate' },

    {
        'nvim-telescope/telescope.nvim', version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },

    {'VonHeikemen/lsp-zero.nvim'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'uga-rosa/ccc.nvim'},

    {'jiaoshijie/undotree'},
    {'zaldih/themery.nvim'},

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {},
        -- Optional dependencies
        dependencies = { { "nvim-mini/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
    },
}
