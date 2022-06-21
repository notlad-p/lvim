-- keymappings [view all the defaults by pressing <leader>Lk]

-- Set leader key to space
vim.g.mapleader = " "
lvim.leader = "space"

-- Save buffer with Ctrl + s
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

local opts = { noremap = true, silent = true }

-- open new unnamed buffer
vim.api.nvim_set_keymap("n", "<Leader>bn", ":ene<CR>", opts)
lvim.builtin.which_key.mappings["bn"] = {
	":ene<CR>",
	"open unnamed buffer",
}

-- open new named buffer (name from command line)
vim.api.nvim_set_keymap("n", "<Leader>bN", ":ene|e ", opts)
lvim.builtin.which_key.mappings["bN"] = {
	":ene|e ",
	"name buffer then open",
}

-- terminal
-- open horizontal terminal
vim.api.nvim_set_keymap("n", "<Leader>th", ":ToggleTerm size=10 direction=horizontal<CR>", opts)
lvim.builtin.which_key.mappings["th"] = {
	":ToggleTerm size=10 direction=horizontal<CR>",
	"toggle horizontal terminal",
}
