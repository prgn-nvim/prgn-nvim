-- init.lua

-- `snippets` module declaration

-- MODULES

local friendly = require("prgn.modules.features.snippets.friendly")

-- CODE

local snippets = {
  "L3MON4D3/LuaSnip",
  opt = false,
  branch = "master",
  commit = "8b25e74761eead3dc47ce04b5e017fd23da7ad7e",
  lock = true,
  requires = { friendly }
}

return snippets

-- init.lua ends here
