-- init.lua

-- `telescope` module declaration

-- MODULES

local plenary = require ("prgn.modules.core.plenary")
local file_browser = require ("prgn.modules.tools.telescope.file-browser")
local fzf = require ("prgn.modules.tools.telescope.fzf")
local project= require ("prgn.modules.tools.telescope.project")

-- CODE

local telescope = {
  "nvim-telescope/telescope.nvim",
  opt = false,
  branch = "master",
  commit = "cabf991b1d3996fa6f3232327fc649bbdf676496",
  lock = true,
  requires = { plenary, file_browser, fzf, project },
  config = function ()
    local telescope = require ("telescope")
    local options = require ("prgn.modules.tools.telescope.options")

    telescope.setup (options)

    telescope.load_extension ("fzf")
    telescope.load_extension ("file_browser")
    telescope.load_extension ("projects")
  end
}

return telescope

-- init.lua ends here
