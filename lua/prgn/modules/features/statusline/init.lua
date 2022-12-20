-- init.lua

-- `statusline` module declaration

-- MODULES

local icons = require("prgn.modules.features.icons")

-- CODE

local statusline = {
  "nvim-lualine/lualine.nvim",
  opt = false,
  branch = "master",
  commit = "bfa0d99ba6f98d077dd91779841f1c88b7b5c165",
  lock = true,
  requires = { icons },
  config = function ()
    local statusline = require ("lualine")
    local options = require ("prgn.modules.features.statusline.options")

    statusline.setup(options)
  end
}

return statusline

-- init.lua ends here
