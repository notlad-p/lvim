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
}
