local config = require("gerbil.config")
local conjure = require("gerbil.conjure")
local paredit = require("gerbil.paredit")

local M = {}

---@param options? GerbilOptions
M.setup = function(options)
  if vim.b.is_gerbil == nil then
    return
  end

  local opts = config.setup(options)

  conjure.setup(opts.conjure)
  paredit.setup(opts.paredit)
end

M.test = function()
  vim.print("testing")
end

return M
