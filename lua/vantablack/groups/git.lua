-- Git plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    gitcommitOverflow         = { fg = c.red },
    gitcommitSummary          = { fg = c.green },
    gitcommitComment          = { fg = c.comment, style = opts.styles.comments },
    gitcommitUntracked        = { fg = c.comment },
    gitcommitDiscarded        = { fg = c.comment },
    gitcommitSelected         = { fg = c.comment },
    gitcommitHeader           = { fg = c.purple },
    gitcommitSelectedType     = { fg = c.blue },
    gitcommitUnmergedType     = { fg = c.blue },
    gitcommitDiscardedType    = { fg = c.blue },
    gitcommitBranch           = { fg = c.orange, bold = true },
    gitcommitUntrackedFile    = { fg = c.yellow },
    gitcommitUnmergedFile     = { fg = c.red, bold = true },
    gitcommitDiscardedFile    = { fg = c.red, bold = true },
    gitcommitSelectedFile     = { fg = c.green, bold = true },
  }
end

return M
