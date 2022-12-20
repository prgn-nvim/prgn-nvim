-- init.lua

-- `project` Telescope submodule declaration

local project = {
  "ahmedkhalf/project.nvim",
  opt = false,
  branch = "main",
  commit = "685bc8e3890d2feb07ccf919522c97f7d33b94e4",
  lock = true,
  config = function ()
    local project = require ("project_nvim")
    local options = require ("prgn.modules.tools.telescope.project.options")

    project.setup (options)
  end
}

return project

-- init.lua ends here
