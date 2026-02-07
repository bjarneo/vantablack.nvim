-- Vantablack colorscheme colors for use by external tools like lualine
-- This module provides access to the currently active color palette

local M = {}

-- Get the current color palette
function M.get()
  local config = require("vantablack.config")
  local colors_module = require("vantablack.colors")
  local opts = config.extend()
  return colors_module.setup(opts)
end

-- For compatibility with simple require() calls
setmetatable(M, {
  __index = function(_, key)
    local colors = M.get()
    return colors[key]
  end
})

return M
