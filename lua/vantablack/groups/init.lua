local Config = require("vantablack.config")
local Util = require("vantablack.utils")

local M = {}

-- Plugin mapping
M.plugins = {
  ["blink.cmp"] = "blink",
  ["gitsigns.nvim"] = "gitsigns",
  ["indent-blankline.nvim"] = "indent-blankline",
  ["lazy.nvim"] = "lazy",
  ["mason.nvim"] = "mason",
  ["mini.nvim"] = "mini",
  ["neo-tree.nvim"] = "neo-tree",
  ["noice.nvim"] = "noice",
  ["nvim-dap"] = "dap",
  ["nvim-tree.lua"] = "nvim-tree",
  ["snacks.nvim"] = "snacks",
  ["telescope.nvim"] = "telescope",
  ["trouble.nvim"] = "trouble",
  ["which-key.nvim"] = "which-key",
}

function M.get_group(name)
  local ok, mod = pcall(require, "vantablack.groups." .. name)
  if ok then
    return mod
  end
  return nil
end

---@param colors ColorScheme
---@param opts vantablack.Config
function M.get(name, colors, opts)
  local mod = M.get_group(name)
  if mod and mod.get then
    return mod.get(colors, opts)
  end
  return {}
end

---@param colors ColorScheme
---@param opts vantablack.Config
function M.setup(colors, opts)
  local groups = {
    base = true,
    treesitter = true,
  }

  -- Always load base groups
  local ret = M.get("base", colors, opts)

  -- Always load treesitter
  ret = vim.tbl_deep_extend("force", ret, M.get("treesitter", colors, opts))

  -- Load plugin groups based on configuration
  for plugin, group_name in pairs(M.plugins) do
    if opts.plugins.all or (opts.plugins[plugin] ~= false) then
      local plugin_groups = M.get(group_name, colors, opts)
      ret = vim.tbl_deep_extend("force", ret, plugin_groups)
    end
    ::continue::
  end

  return Util.resolve(ret)
end

return M
