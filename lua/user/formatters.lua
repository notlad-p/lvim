local M = {}

M.setup = function()
	local formatters = require("lvim.lsp.null-ls.formatters")

	formatters.setup({
		{ command = "black", filetypes = { "python" } },
		{ command = "isort", filetypes = { "python" } },
		{
			command = "prettier",
			filetypes = {
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"markdown",
				"css",
				"scss",
				"less",
			},
		},
		{
			command = "stylua",
			filetypes = { "lua" },
		},
	})
end

return M
