-- init.lua

-- `prgn-nvim` module configuration

local packer_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
local is_bootstrap = false

-- Boostrap `packer`
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
  is_bootstrap = true

  vim.notify("Bootstrapping `packer`... Please wait!")
  vim.fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    packer_path
  })
  vim.notify("`packer` bootstrap complete! Please restart `neovim`!")

  vim.cmd("packadd packer.nvim")
end

local packer = require("packer")

packer.startup(function(use)
  -- Load core modules
  for _, module_name in ipairs(prgn.core) do
    local module = require("prgn.modules.core." .. module_name)

    use(module)
  end

  -- Load feature modules
  for _, module_name in ipairs(prgn.features) do
    local module = require("prgn.modules.features." .. module_name)

    use(module)
  end

  -- Load tool modules
  for _, module_name in ipairs(prgn.tools) do
    local module = require("prgn.modules.tools." .. module_name)

    use(module)
  end

  if is_bootstrap then
    packer.sync()
  end
end)

-- Automatically source and re-compile `packer` whenever you save `init.lua` files
local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
  group = packer_group,
  pattern = vim.fn.expand("${MYVIMRC}"),
  command = "source init.lua | PackerCompile"
})

-- init.lua ends here
