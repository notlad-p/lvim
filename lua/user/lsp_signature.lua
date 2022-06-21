local M = {}

M.config = function()
	local status_ok, lsp_signature = pcall(require, "lsp_signature")

	if not status_ok then
		print("LSP Signature not ready")
		return
	end

	lsp_signature.setup()
end

return M
