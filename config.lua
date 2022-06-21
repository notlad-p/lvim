-- TODO:
-- start fish when terminal opened
-- use prettierrc as formatter
-- set max height for toggle term as horizontal term
-- set max width for nvim-tree
-- find way to use which-key for vim-surround and other plugins

-- organize config and push to github
-- add .luacheckrc and stylua.toml
-- add README.md with: List of plugins, required installations (Lua, Luarocks, Cargo/Rust, Node.js, ...)

-- custom plugins
require("user.plugins")

-- Formatters
require("user.formatters").setup()

-- set additional linters
require("user.linters").setup()

-- set custom keybindings
require("user.keys")

-- set autocommands
-- require("user.autocommands").config()

-- general
lvim.log.level = "warn"
lvim.format_on_save = true

-- colorscheme
lvim.colorscheme = "onedark"

-- setup auto tags for HTML and JSX/TSX
require("nvim-ts-autotag").setup()

-- Add custom snippets
require("luasnip.loaders.from_vscode").load({ paths = "./snippets" })

-- nvim-tree customization
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.setup.filters.dotfiles = false
lvim.builtin.nvimtree.setup.filters.custom = {}

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
