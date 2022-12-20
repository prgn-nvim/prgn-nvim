-- init.lua

-- `lsp` module configuration

-- MODULES

local mason = require("prgn.modules.features.lsp.mason")
local mason_lspconfig = require("prgn.modules.features.lsp.mason-lspconfig")
local fidget = require("prgn.modules.features.lsp.fidget")

-- CODE

local lsp = {
  "neovim/nvim-lspconfig",
  opt = false,
  branch = "master",
  commit = "973aa14d0992df82ff82f714d978a3eb8d676600",
  lock = true,
  requires = { mason, mason_lspconfig, fidget },
  config = function()
    local lspconfig = require("lspconfig")
    local fidget = require("fidget")

    for _, server in ipairs(prgn.options.servers) do
      local options = require("prgn.modules.features.lsp.options." .. server)

      lspconfig[server].setup(options)
    end

    -- Hide diagnostics
    vim.diagnostic.config({
      virtual_text = false,
      signs = false,
      underline = false
    })

    fidget.setup({})
  end
}

return lsp

-- init.lua ends here
