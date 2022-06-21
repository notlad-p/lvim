local M = {}

M.config = function()
  lvim.autocommands.custom_groups = {
    { "BufWinEnter", "*.md", "lua MarkdownKeys()" },
  }

  function MarkdownKeys()
    lvim.builtin.which_key.mappings["m"] = {
      name = "Markdown",
      t = {
        ":MarkdownPreviewToggle<CR>",
        "Toggle markdown preview",
      },
      p = {
        ":MarkdownPreview<CR>",
        "Preview markdown",
      },
      s = {
        ":MarkdownPreviewStop<CR>",
        "Stop markdown preview",
      },
    }
  end
end

return M
