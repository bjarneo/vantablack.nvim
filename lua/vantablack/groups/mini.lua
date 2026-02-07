-- Mini plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- Mini.nvim modules
    MiniCompletionActiveParameter = { underline = true },
    MiniCursorword                = { bg = c.bg_highlight },
    MiniCursorwordCurrent         = { bg = c.bg_highlight },
    MiniIndentscopeSymbol         = { fg = c.blue1, nocombine = true },
    MiniIndentscopePrefix         = { nocombine = true },
    MiniJump                      = { bg = c.magenta2, fg = c.black },
    MiniJump2dSpot                = { fg = c.magenta2, bold = true, nocombine = true },
    MiniStarterCurrent            = { nocombine = true },
    MiniStarterFooter             = { fg = c.yellow, italic = true },
    MiniStarterHeader             = { fg = c.blue, bold = true },
    MiniStarterInactive           = { fg = c.comment },
    MiniStarterItem               = { fg = c.fg },
    MiniStarterItemBullet         = { fg = c.border_highlight },
    MiniStarterItemPrefix         = { fg = c.warning },
    MiniStarterSection            = { fg = c.blue, bold = true },
    MiniStarterQuery              = { fg = c.info },
    MiniStatuslineDevinfo         = { fg = c.fg_dark, bg = c.bg_highlight },
    MiniStatuslineFileinfo        = { fg = c.fg_dark, bg = c.bg_highlight },
    MiniStatuslineFilename        = { fg = c.fg_dark, bg = c.fg_gutter },
    MiniStatuslineInactive        = { fg = c.blue, bg = c.bg_statusline },
    MiniStatuslineModeCommand     = { fg = c.black, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert      = { fg = c.black, bg = c.green, bold = true },
    MiniStatuslineModeNormal      = { fg = c.black, bg = c.blue, bold = true },
    MiniStatuslineModeOther       = { fg = c.black, bg = c.teal, bold = true },
    MiniStatuslineModeReplace     = { fg = c.black, bg = c.red, bold = true },
    MiniStatuslineModeVisual      = { fg = c.black, bg = c.magenta, bold = true },
    MiniSurround                  = { bg = c.orange, fg = c.black },
    MiniTablineCurrent            = { fg = c.fg, bg = c.bg_highlight, bold = true },
    MiniTablineFill               = { bg = c.black },
    MiniTablineHidden             = { fg = c.dark5, bg = c.bg_statusline },
    MiniTablineModifiedCurrent    = { fg = c.warning, bg = c.bg_highlight, bold = true },
    MiniTablineModifiedHidden     = { fg = c.dark5, bg = c.bg_statusline },
    MiniTablineModifiedVisible    = { fg = c.warning, bg = c.bg_statusline },
    MiniTablineTabpagesection     = { fg = c.black, bg = c.blue, bold = true },
    MiniTablineVisible            = { fg = c.fg, bg = c.bg_statusline },
    MiniTestEmphasis              = { bold = true },
    MiniTestFail                  = { fg = c.red, bold = true },
    MiniTestPass                  = { fg = c.green, bold = true },
    MiniTrailspace                = { bg = c.red },
  }
end

return M
