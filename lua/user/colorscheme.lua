local M = {}

M.onedark = function()
  local status_ok, onedark = pcall(require, "onedark")

  if not status_ok then
    print("Onedark not ready")
    return
  end

  onedark.setup({
    style = "deep",
  })

  onedark.load()
end

return M
