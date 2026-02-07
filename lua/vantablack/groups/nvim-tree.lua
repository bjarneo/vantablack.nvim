-- Nvim-tree plugin support for Vantablack colorscheme
local Util = require("vantablack.utils")

local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type vantablack.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NvimTreeFolderIcon   = { bg = c.none, fg = c.blue },
    NvimTreeGitDeleted   = { fg = c.git.delete },
    NvimTreeGitDirty     = { fg = c.git.change },   -- Modified files
    NvimTreeGitNew       = { fg = c.git.add },      -- New/untracked files
    NvimTreeGitStaged    = { fg = c.git.add },      -- Staged files
    NvimTreeGitMerge     = { fg = c.red },          -- Merge conflicts
    NvimTreeGitRenamed   = { fg = c.yellow },       -- Renamed files
    NvimTreeGitIgnored   = { fg = c.comment },      -- Ignored files
    NvimTreeImageFile    = { fg = c.fg_sidebar },
    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeNormal       = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalNC     = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeOpenedFile   = { bg = c.bg_highlight },
    NvimTreeRootFolder   = { fg = c.blue, bold = true },
    NvimTreeSpecialFile  = { fg = c.purple, underline = true },
    NvimTreeSymlink      = { fg = c.blue },
    NvimTreeWinSeparator = { fg = opts.styles.sidebars == "transparent" and c.border or c.bg_sidebar, bg = c.bg_sidebar },
  }
end

return M
