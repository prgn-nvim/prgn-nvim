-- options.lua

-- `neovim` options configuration

-- Completion

-- Completion menu settings
vim.opt.completeopt = prgn.options.completeopt

-- Maximum completion menu height
vim.opt.pumheight = prgn.options.completeheight

-- Maximum completion menu width
vim.opt.pumwidth = prgn.options.completewidth

-- Formatting

local format_group = vim.api.nvim_create_augroup("Formatting", {
 clear = true
})
vim.api.nvim_create_autocmd("BufEnter", {
  group = format_group,
  pattern = "*",
  callback = function()
    vim.cmd("set formatoptions-=cro")
  end
})

-- Indentation

-- Preserve indent from previous line
vim.opt.autoindent = prgn.options.autoindent

-- Number of spaces in tab
vim.opt.shiftwidth = prgn.options.tabsize
vim.opt.softtabstop = prgn.options.tabsize
vim.opt.tabstop = prgn.options.tabsize

-- Replace tabs for spaces
vim.opt.expandtab = prgn.options.expandtab

-- Round to indentations `shiftwidth` multiple
--
-- @default = false
vim.opt.shiftround = true

-- Search

-- Highlight search all matches
vim.opt.hlsearch = prgn.options.hlsearch

-- Ignore case when using a search pattern
vim.opt.ignorecase = prgn.options.ignorecase

-- Perform search incrementally
vim.opt.incsearch = prgn.options.incsearch

-- Override `ignorecase` when search pattern has upper case characters
vim.opt.smartcase = prgn.options.smartcase

-- Selection

-- Use system clipboard
if prgn.options.clipboard then
  vim.opt.clipboard:append("unnamedplus")
end

-- Undo

-- Persist file changes
vim.opt.undofile = prgn.options.persistundo

-- List of directories for undo files
vim.opt.undodir = { vim.fn.stdpath("config") .. "/.local/etc/undo//" }

-- Create swapfile for current buffer
--
-- Since we're persiting undo's and autosaving them, we don't need swapfiles
--
-- @default = true
vim.opt.swapfile = false

-- Create backup before overwriting file
--
-- Since we're persisting undo's, we don't need backups
--
-- @default = true
vim.opt.writebackup = false

-- User Interface

-- Print dialog when command fails
--
-- @default = false
vim.opt.confirm = true

-- Disable all annoying error indicators
vim.opt.errorbells = false
vim.opt.visualbell = false
vim.opt.belloff = "all"

-- Enable mouse
if prgn.options.mouse then
  vim.opt.mouse = "a"
else
  vim.opt.mouse = ""
end

-- Display line numbers
vim.opt.number = prgn.options.number

-- Initial line number margin width
vim.opt.numberwidth = prgn.options.numberwidth

-- Display relative line numbers
vim.opt.relativenumber = prgn.options.relativenumber

-- Display cursor position below each window
--
-- @default = true
vim.opt.ruler = false

-- Display commands
vim.opt.showcmd = prgn.options.showcmd

-- Display editing mode
vim.opt.showmode = prgn.options.showmode

-- Display signcolumn
if prgn.options.signcolumn then
  vim.opt.signcolumn = "yes"
else
  vim.opt.signcolumn = "no"
end

-- Minimum number of screen lines around cursor
vim.opt.scrolloff = prgn.options.scrolloff

-- Split windows horzontally to the bottom
vim.opt.splitbelow = prgn.options.splitbelow

-- Split windows vertically to the right
vim.opt.splitright = prgn.options.splitright

-- Display statusline
if prgn.options.statusline then
  vim.opt.laststatus = 3
else
  vim.opt.laststatus = 0
end

-- Use GUI colours for the terminal interface
--
-- @default = false
vim.opt.termguicolors = true

-- Wrap long lines
vim.opt.wrap = prgn.options.wrap

-- Display trailing whitespace
vim.opt.list = prgn.options.trailing
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

-- Miscellaneous

-- Swap file updating intervals (ms)
vim.opt.updatetime = prgn.options.updatetime

-- Directory to save files create by `:mkview`
--
-- @default = "${HOME}/.local/state/nvim/view//"
vim.opt.viewdir = vim.fn.stdpath("config") .. "/.local/etc/view//"

-- options.lua ends here
