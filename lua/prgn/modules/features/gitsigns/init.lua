-- init.lua

-- `gitsigns` module declaration

local gitsigns = {
  "lewis6991/gitsigns.nvim",
  opt = false,
  branch = "main",
  commit = "71644a2907adc076f1c5e712f59d897f5197d5d6",
  lock = true,
  config = function()
    local gitsigns = require("gitsigns")
    local options = require("prgn.modules.features.gitsigns.options")

    gitsigns.setup()
  end
}

return gitsigns

-- init.lua ends here
