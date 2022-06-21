lvim.plugins = {
	{
		"navarasu/onedark.nvim",
		as = "onedark",
		config = function()
			require("user.colorscheme").onedark()
		end,
	},
	{ "windwp/nvim-ts-autotag" },
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("user.colorizer").config()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		as = "indent_blankline",
		config = function()
			require("user.indent_blankline").config()
		end,
	},
	{ "ggandor/lightspeed.nvim" },
	{ "tpope/vim-surround" },
	{
		"ray-x/lsp_signature.nvim",
		config = function()
			require("user.lsp_signature").config()
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
}
