-- init.lua

-- `outline` module declaration

local outline = {
  "simrat39/symbols-outline.nvim",
  opt = false,
  branch = "master",
  commit = "6a3ed24c5631da7a5d418bced57c16b32af7747c",
  lock = true,
  config = function ()
    local outline = require ("symbols-outline")
    local options = require ("prgn.modules.features.outline.options")

    outline.setup (options)
  end
}

return outline

-- init.lua ends here
