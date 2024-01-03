local config = require("gerbil.config")

local M = {}

---@param options? GerbilOptions
M.setup = function(options)
  if vim.b.is_gerbil == nil then
    return
  end

  local opts = config.setup(options)

  -- TODO: check for this in another way, temporary
  if opts.conjure.setup then
    require("gerbil.conjure").setup(opts.conjure)
  end

  if opts.paredit.setup then
    require("gerbil.paredit").setup(opts.paredit)
  end
end

M.test = function()
  vim.print("testing")
end

return M
