-- init.lua

-- `mason-lspconfig` LSP submodule configuration

local mason_lspconfig = {
  "williamboman/mason-lspconfig.nvim",
  opt = false,
  branch = "main",
  commit = "e8bd50153b94cc5bbfe3f59fc10ec7c4902dd526",
  lock = true,
  config = function()
    local mason_lspconfig = require("mason-lspconfig")
    local options = require("prgn.modules.features.lsp.mason-lspconfig.options")

    mason_lspconfig.setup(options)
  end
}

return mason_lspconfig

-- init.lua ends here
