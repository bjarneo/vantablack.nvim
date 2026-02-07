-- Flash plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.comment },
    FlashCurrent  = { fg = c.black, bg = c.orange, bold = true },
    FlashLabel    = { fg = c.black, bg = c.magenta, bold = true },
    FlashMatch    = { fg = c.cyan, bg = c.bg_highlight, bold = true },
    FlashPrompt   = { link = "NormalFloat" },
  }
end

return M
