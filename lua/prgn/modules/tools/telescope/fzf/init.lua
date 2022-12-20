-- init.lua

-- `fzf` Telescope submodule declaration

local fzf = {
  "nvim-telescope/telescope-fzf-native.nvim",
  opt = false,
  branch = "main",
  commit = "fab3e2212e206f4f8b3bbaa656e129443c9b802e",
  lock = true,
  run = "make"
}

return fzf

-- init.lua ends here
