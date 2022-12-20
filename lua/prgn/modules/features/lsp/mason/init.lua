-- init.lua

-- `mason` LSP submodule configuration

local mason = {
  "williamboman/mason.nvim",
  opt = false,
  branch = "main",
  commit = "a1af30116e1bfbd3aa8048b396c324373415958f",
  lock = true,
  config = function()
    local mason = require("mason")
    local options = require("prgn.modules.features.lsp.mason.options")

    --vim.opt.runtimepath:append(vim.fn.stdpath("config") .. "/.local/etc/mason")

    mason.setup(options)
  end
}

return mason

-- init.lua ends here
