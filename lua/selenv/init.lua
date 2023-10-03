local M = {}

local update_config = function(opts)
  local config = require('selenv.config')
  opts = opts or {}
  config.settings = vim.tbl_extend('force', config.settings, opts)
end

M.setup = function(opts)
  update_config(opts)
  require('selenv.api').init()
end

return M
