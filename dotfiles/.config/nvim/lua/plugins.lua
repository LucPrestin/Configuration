return require('packer').startup(function(use)
	-- plugin system
	use 'wbthomason/packer.nvim'
	
	-- lsp configurations
	use 'williamboman/mason.nvim'   
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
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
	
	-- hrsh7th dev suite
	use 'hrsh7th/nvim-cmp' 
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'
	
	-- debugging
	use 'mfussenegger/nvim-dap'
	use { 
		"rcarriga/nvim-dap-ui", 
		requires = {"mfussenegger/nvim-dap"} 
	}
	
	-- linting
	use 'mfussenegger/nvim-lint'
	
	-- styling
	use 'NLKNguyen/papercolor-theme'
	
	-- status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 
			'kyazdani42/nvim-web-devicons', 
			opt = true
		}
	}
	use 'preservim/tagbar'
	
	-- file explorer
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = { 
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		}
	}
	
	-- editor goodies
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use {
		'akinsho/bufferline.nvim',
		tag = "v3.*", 
		requires = 'nvim-tree/nvim-web-devicons'
	}
	use "lukas-reineke/indent-blankline.nvim"
	use 'voldikss/vim-floaterm'
	use {
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function() require("trouble").setup({}) end
	}
	use 'mhinz/vim-startify'

	-- markdown support
	use {
		'iamcco/markdown-preview.nvim',
		run = function() vim.fn["mkdp#util#install"]() end,
	}
	
	-- nodejs support
	use {
		'neoclide/coc.nvim',
		branch='release'
	}
	
	-- latex support
	use 'lervag/vimtex'
end)
