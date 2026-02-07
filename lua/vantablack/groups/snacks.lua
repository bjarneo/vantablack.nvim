-- Snacks plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    SnacksNormal           = { bg = c.bg_float, fg = c.fg },
    SnacksWinBar           = { bg = c.bg_float, fg = c.fg },
    SnacksBackdrop         = { bg = c.bg_dark },
    SnacksNormalNC         = { bg = c.bg_float, fg = c.fg },
    SnacksWinBarNC         = { bg = c.bg_float, fg = c.fg_dark },
    SnacksNotifierInfo     = { fg = c.info },
    SnacksNotifierWarn     = { fg = c.warning },
    SnacksNotifierError    = { fg = c.error },
    SnacksNotifierDebug    = { fg = c.comment },
    SnacksNotifierTrace    = { fg = c.purple },
    SnacksNotifierIconInfo = { fg = c.info },
    SnacksNotifierIconWarn = { fg = c.warning },
    SnacksNotifierIconError = { fg = c.error },
    SnacksNotifierIconDebug = { fg = c.comment },
    SnacksNotifierIconTrace = { fg = c.purple },
    SnacksNotifierTitleInfo = { fg = c.info, bold = true },
    SnacksNotifierTitleWarn = { fg = c.warning, bold = true },
    SnacksNotifierTitleError = { fg = c.error, bold = true },
    SnacksNotifierTitleDebug = { fg = c.comment, bold = true },
    SnacksNotifierTitleTrace = { fg = c.purple, bold = true },
    SnacksNotifierBorderInfo = { fg = c.info },
    SnacksNotifierBorderWarn = { fg = c.warning },
    SnacksNotifierBorderError = { fg = c.error },
    SnacksNotifierBorderDebug = { fg = c.comment },
    SnacksNotifierBorderTrace = { fg = c.purple },
  }
end

return M
