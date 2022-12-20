-- sumneko_lua.lua

-- `sumneko_lua` language server options configuration

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local options = {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
}

return options

-- sumneko_lua.lua ends here
