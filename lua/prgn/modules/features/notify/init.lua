-- init.lua

-- `notify` module declaration

local notify = {
  "rcarriga/nvim-notify",
  opt = false,
  branch = "master",
  commit = "b005821516f1f37801a73067afd1cef2dbc4dfe8",
  lock = true,
  config = function()
    local notify = require("notify")

    vim.notify = notify
  end
}

return notify

-- init.lua ends here
