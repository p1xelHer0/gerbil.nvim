if vim.b.is_gerbil == nil then
  return
end
if vim.b.gerbil_plugin ~= nil then
  return
end
vim.b.gerbil_plugin = 1

local api = vim.api

api.nvim_buf_create_user_command(0, "GerbilTest", function(_)
  require("gerbil").test()
end, {
  desc = "Test the Gerbil plugin",
  nargs = "?",
})
