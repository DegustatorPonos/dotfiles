vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Colorscheme
	use({
		"neanias/everforest-nvim",
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("everforest").setup()
		end,
	})

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- Status bar. Does not go so well with the colorscheme so IDK
	-- use( 'vim-airline/vim-airline' )
	
	-- LSP (god i hate to do it)
	use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})	
	use({'williamboman/mason.nvim'})	
	use({'williamboman/mason-lspconfig.nvim'})	
end)
