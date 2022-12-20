-- init.lua

-- `treesitter` module configuration

-- TODO: nvim-treesitter-textobjects

local treesitter = {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  commit = "ee095abeac5842943a94a27c0ca75c61e7c614a2",
  lock = true,
  run = function()
    pcall(require("nvim-treesitter.install").update({ with_sync = true }))
  end,
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    local options = require("prgn.modules.core.treesitter.options")

    vim.opt.runtimepath:append(vim.fn.stdpath("config") .. "/.local/etc/parsers")

    treesitter.setup(options)
  end
}

return treesitter

-- init.lua ends here
