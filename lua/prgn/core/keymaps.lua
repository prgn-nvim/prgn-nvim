-- keymaps.lua

-- `neovim` keymaps configuration

-- Map leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local options = { noremap = true, silent = true }

for mode, maps in pairs(prgn.keymaps) do
  for keys, value in pairs(maps) do
    local command = value[1]
    vim.keymap.set(mode, keys, command, options)
  end
end

-- keymaps.lua ends here
