-- Dap plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    DapBreakpoint          = { fg = c.red },
    DapBreakpointCondition = { fg = c.yellow },
    DapBreakpointRejected  = { fg = c.comment },
    DapLogPoint            = { fg = c.blue },
    DapStopped             = { fg = c.green },
    DapStoppedLine         = { bg = Util.blend_bg(c.yellow, 0.2) },
    DapUIBreakpointsCurrentLine = { fg = c.green, bold = true },
    DapUIBreakpointsDisabledLine = { fg = c.comment },
    DapUIBreakpointsInfo   = { fg = c.green },
    DapUIBreakpointsPath   = { fg = c.cyan },
    DapUIDecoration        = { fg = c.blue },
    DapUIFloatBorder       = { fg = c.border_highlight },
    DapUILineNumber        = { fg = c.cyan },
    DapUIModifiedValue     = { fg = c.cyan, bold = true },
    DapUIPlayPause         = { fg = c.green },
    DapUIRestart           = { fg = c.green },
    DapUIScope             = { fg = c.cyan },
    DapUISource            = { fg = c.purple },
    DapUIStepBack          = { fg = c.cyan },
    DapUIStepInto          = { fg = c.cyan },
    DapUIStepOut           = { fg = c.cyan },
    DapUIStepOver          = { fg = c.cyan },
    DapUIStop              = { fg = c.red },
    DapUIStoppedThread     = { fg = c.cyan },
    DapUIThread            = { fg = c.green },
    DapUIType              = { fg = c.purple },
    DapUIValue             = { fg = c.fg },
    DapUIVariable          = { fg = c.fg },
    DapUIWatchesEmpty      = { fg = c.red },
    DapUIWatchesError      = { fg = c.red },
    DapUIWatchesValue      = { fg = c.green },
  }
end

return M
