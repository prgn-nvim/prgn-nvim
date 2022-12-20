-- init.lua

-- `indent` module configuration

local indent = {
  "lukas-reineke/indent-blankline.nvim",
  opt = false,
  branch = "master",
  commit = "c4c203c3e8a595bc333abaf168fcb10c13ed5fb7",
  lock = true,
  config = function()
    local indent = require("indent_blankline")
    local options = require("prgn.modules.features.indent.options")

    indent.setup(options)
  end
}

return indent

-- init.lua ends here
