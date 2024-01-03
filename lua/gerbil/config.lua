local M = {}

---@class GerbilOptions
local defaults = {
  ---@class ConjureOptions
  conjure = {
    setup = true,
    command = "gxi",
    prompt_pattern = "%d*> ",
  },
  paredit = {
    setup = false,
  },
}

local options = {}

---@param options? GerbilOptions
---@return GerbilOptions
function M.setup(options)
  vim.validate({ options = { options, "table", true } })

  options = vim.tbl_deep_extend("force", vim.deepcopy(defaults), options or {})

  vim.validate({
    conjure = { options.conjure, "table" },
    paredit = { options.paredit, "table" },
  })

  vim.validate({
    ["options.conjure.setup"] = { options.conjure.setup, "boolean" },
    ["options.conjure.command"] = { options.conjure.command, "string" },
    ["options.conjure.prompt_pattern"] = { options.conjure.prompt_pattern, "string" },

    ["options.paredit.setup"] = { options.paredit.setup, "boolean" },
  })

  return options
end

---@return GerbilOptions
function M.get_opts()
  return vim.tbl_deep_extend("force", options, vim.b.gerbil_config or {})
end

return M
