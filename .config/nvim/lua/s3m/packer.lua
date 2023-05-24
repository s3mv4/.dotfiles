vim.cmd("packadd packer.nvim")

return require("packer").startup(function(use)
	-- Packer
	use { "wbthomason/packer.nvim" }

	-- Telescope
	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } }
	}

	-- Colorscheme
	use { "ellisonleao/gruvbox.nvim" }

	-- Treesitter
	use {
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	}

	-- Lsp
	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{
				-- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required

			-- Extra sources
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "rafamadriz/friendly-snippets" },
		}
	}
end)
