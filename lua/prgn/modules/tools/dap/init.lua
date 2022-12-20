-- init.lua

-- `dap` module declaration

-- MODULES

local ui = require("prgn.modules.dap.ui")

-- CODE

local dap = {
  "mfussenegger/nvim-dap",
  disable = prgn.tools.dap,
  opt = true,
  branch = "master",
  commit = "68d96871118a13365f3c33e4838990030fff80ec",
  lock = true,
  requires = { ui }
}

return dap

-- init.lua ends here
