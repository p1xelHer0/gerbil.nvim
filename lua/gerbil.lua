local config = require("gerbil.config")
local conjure = require("gerbil.conjure")

local M = {}

---@param options? GerbilOptions
M.setup = function(options)
  if vim.b.is_gerbil == nil then
    return
  end

  local opts = config.setup(options)

  conjure.setup(opts.conjure)
end

M.test = function()
  vim.print("testing")
end

return M
