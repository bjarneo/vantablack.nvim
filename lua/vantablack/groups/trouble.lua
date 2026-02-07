-- Trouble plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TroubleText        = { fg = c.fg_dark },
    TroubleCount       = { fg = c.magenta, bg = c.fg_gutter },
    TroubleNormal      = { fg = c.fg, bg = c.bg_sidebar },
    TroubleTextInformation = { fg = c.info },
    TroubleSignWarning = { fg = c.warning },
    TroubleSignInformation = { fg = c.info },
    TroubleSignHint    = { fg = c.hint },
    TroubleSignError   = { fg = c.error },
    TroubleSignOther   = { fg = c.purple },
    TroubleIndent      = { fg = c.fg_gutter },
    TroubleLocation    = { fg = c.comment },
    TroubleFoldIcon    = { fg = c.comment },
    TroubleFile        = { fg = c.blue },
    TroubleCode        = { fg = c.comment },
  }
end

return M
