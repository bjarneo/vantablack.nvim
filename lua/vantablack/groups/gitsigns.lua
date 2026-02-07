-- Gitsigns plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  return {
    GitSignsAdd = { fg = c.git.add },
    GitSignsChange = { fg = c.git.change },
    GitSignsDelete = { fg = c.git.delete },
  }
end

return M
