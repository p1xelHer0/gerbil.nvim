local M = {}

---@param options ConjureOptions
M.setup = function(options)
  if options.setup == true then
    vim.g["conjure#client#scheme#stdio#command"] = options.command
    vim.g["conjure#client#scheme#stdio#prompt_pattern"] = options.prompt_pattern
    vim.g["conjure#client#scheme#stdio#value_prefix_pattern"] = false
  end
end

return M
