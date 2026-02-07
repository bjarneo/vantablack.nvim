-- Indent blankline plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IblIndent = { fg = c.fg_gutter, nocombine = true },
    IblScope  = { fg = c.blue1, nocombine = true },
  }
end

return M
