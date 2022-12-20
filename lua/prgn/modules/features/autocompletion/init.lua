-- init.lua

-- `autocompletion` module declaration

-- MODULES

local lsp = require("prgn.modules.features.autocompletion.lsp")
local path = require("prgn.modules.features.autocompletion.path")
local buffer = require("prgn.modules.features.autocompletion.buffer")

-- CODE

local autocompletion = {
  "hrsh7th/nvim-cmp",
  opt = false,
  branch = "main",
  commit = "8bbaeda725d5db6e4e1be2867a64b43bf547cf06",
  lock = true,
  requires = { lsp, path, buffer },
  config = function()
    local cmp = require("cmp")
    local options = require("prgn.modules.features.autocompletion.options")

    cmp.setup(options)
  end
}

return autocompletion

-- init.lua ends here
