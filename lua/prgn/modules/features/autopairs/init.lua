-- init.lua

-- `autopairs` module declaration

local autopairs = {
  "windwp/nvim-autopairs",
  opt = false,
  branch = "master",
  commit = "b5994e6547d64f781cfca853a1aa6174d238fe0e",
  lock = true,
  config = function()
    local autopairs = require("nvim-autopairs")
    local options = require("prgn.modules.features.autopairs.options")

    autopairs.setup(options)
  end
}

return autopairs

-- init.lua ends here
