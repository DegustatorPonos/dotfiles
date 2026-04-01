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
}
