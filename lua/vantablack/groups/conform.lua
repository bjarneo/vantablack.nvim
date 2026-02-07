-- Conform plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    ConformProgress = { fg = c.blue },
    ConformDone     = { fg = c.green },
    ConformError    = { fg = c.error },
  }
end

return M
