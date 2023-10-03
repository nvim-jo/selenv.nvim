local M = require('lualine.component'):extend()

local default_opts = {
  icon = "",
  color = { fg = "#CDD6F4" },
}

function M:init(options)
  options = vim.tbl_deep_extend("keep", options or {}, default_opts)
  M.super.init(self, options)
end

function M:update_status()
  local venv = require('selenv.api').get_current_venv()
  if venv then
    return venv.name
  else
    return ''
  end
end

return M
