-- init.lua

-- `colourize` module declaration

local colourize = {
  "norcalli/nvim-colorizer.lua",
  opt = false,
  branch = "master",
  commit = "36c610a9717cc9ec426a07c8e6bf3b3abcb139d6",
  lock= true,
  config = function()
    local colourize = require("colorizer")

    colourize.setup()
  end
}

return colourize

-- init.lua ends here
