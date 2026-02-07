-- Fidget plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    FidgetTask = { fg = c.comment },
    FidgetTitle = { fg = c.blue, bold = true },
  }
end

return M
