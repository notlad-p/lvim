local M = {}

M.config = function()
	local status_ok, indent_blankline = pcall(require, "indent_blankline")

	if not status_ok then
		print("Indent blankline not ready")
		return
	end

	indent_blankline.setup({
		show_current_context = true,
		show_current_context_start = true,
	})
end

return M
