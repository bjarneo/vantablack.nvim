-- Vantablack colorscheme for Neovim
-- Maintainer: Bjarne Øverli
-- License: MIT

local config = require("vantablack.config")

local M = {}

---@param opts? vantablack.Config
function M.load(opts)
  opts = require("vantablack.config").extend(opts)
  return require("vantablack.theme").setup(opts)
end

M.setup = config.setup

return M
