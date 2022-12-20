-- init.lua

-- `twilight` module declaration

local twilight = {
  "folke/twilight.nvim",
  opt = false,
  branch = "main",
  commit = "1ffa6a4d89fb2fbb784c6674044bf54f1fca936f",
  lock = true,
  config = function ()
    local twilight = require ("twilight")
    local options = require ("prgn.modules.features.twilight.options")

    twilight.setup (options)

    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "*",
      command = "TwilightEnable"
    })
  end
}

return twilight

-- init.lua ends here
