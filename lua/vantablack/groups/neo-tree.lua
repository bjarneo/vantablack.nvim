-- Neo-tree plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type vantablack.HighlightsFn
function M.get(c, opts)
  local dark = opts.styles.sidebars == "transparent" and c.none
    or Util.blend(c.bg_sidebar, 0.8, c.bg)
  -- stylua: ignore
  return {
    NeoTreeDimText             = { fg = c.fg_gutter },
    NeoTreeFileName            = { fg = c.fg_sidebar },
    NeoTreeGitModified         = { fg = c.git.change },  -- Modified files
    NeoTreeGitStaged           = { fg = c.git.add },     -- Staged files
    NeoTreeGitUntracked        = { fg = c.yellow },      -- Untracked files (new files not in git)
    NeoTreeGitUnstaged         = { fg = c.git.change },  -- Unstaged changes
    NeoTreeGitConflict         = { fg = c.red },         -- Merge conflicts
    NeoTreeGitIgnored          = { fg = c.comment },     -- Ignored files
    NeoTreeGitAdded            = { fg = c.git.add },     -- Added files
    NeoTreeGitDeleted          = { fg = c.git.delete },  -- Deleted files
    NeoTreeGitRenamed          = { fg = c.yellow },      -- Renamed files
    NeoTreeNormal              = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC            = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeTabActive           = { fg = c.blue, bg = c.bg_dark, bold = true },
    NeoTreeTabInactive         = { fg = c.dark3, bg = dark },
    NeoTreeTabSeparatorActive  = { fg = c.blue, bg = c.bg_dark },
    NeoTreeTabSeparatorInactive= { fg = c.bg, bg = dark },
    NeoTreeDirectoryIcon       = { fg = c.blue },
    NeoTreeDirectoryName       = { fg = c.blue },
    NeoTreeSymbolicLinkTarget  = { fg = c.cyan },
    NeoTreeRootName            = { fg = c.blue, bold = true },
    NeoTreeFileNameOpened      = { fg = c.fg_sidebar },
  }
end

return M
