return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'williamboman/mason.nvim'   
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp' 
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'nvim-tree/nvim-web-devicons' },
	}
	use 'mfussenegger/nvim-dap'
	use 'mfussenegger/nvim-lint'
	use { 
		"rcarriga/nvim-dap-ui", 
		requires = {"mfussenegger/nvim-dap"} 
	}
	use 'NLKNguyen/papercolor-theme'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}
	use {
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 
			'kyazdani42/nvim-web-devicons', 
			opt = true
		}
	}
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use {
		'akinsho/bufferline.nvim',
		tag = "v3.*", 
		requires = 'nvim-tree/nvim-web-devicons'
	}
	use {
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function() require("lspsaga").setup({}) end,
		requires = {
			{"nvim-tree/nvim-web-devicons"},
			{"nvim-treesitter/nvim-treesitter"}
		}
	}
	use "lukas-reineke/indent-blankline.nvim"
	use 'voldikss/vim-floaterm'
	use {
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function() require("trouble").setup({}) end
	}
	use 'preservim/tagbar'
	use {
		'iamcco/markdown-preview.nvim',
		run = function() vim.fn["mkdp#util#install"]() end,
	}
	use {
		'neoclide/coc.nvim',
		branch='release'
	}
	use 'mhinz/vim-startify'
	use 'lervag/vimtex'
end)
