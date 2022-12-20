-- init.lua

-- `prgn-theme` module configuration

local theme = {
  "prgn-nvim/prgn-theme",
  branch = "main",
  --commit = "",
  --lock = true
  config = function()
    vim.cmd("colorscheme prgn-theme")
  end
}

return theme

-- init.lua ends here
