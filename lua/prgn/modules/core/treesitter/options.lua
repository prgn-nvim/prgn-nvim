-- init.lua

-- `treesitter` module options

local options = {
  -- List of parser names
  --
  -- To ensure all parsers, set value to "all"
  --
  -- @default = {}
  ensure_installed = prgn.options.parsers,

  -- Install parsers synchronously 
  --
  -- Only applied to `ensure_installed`
  --
  -- @default = false
  sync_install = true,

  -- Automatically install missing parsers when entering a buffer
  --
  -- It is recommended to set to false if you don't have `tree-sitter` CLI
  -- installed locally
  --
  -- @default = true
  auto_install = false,

  -- List of parsers to ignore installing (for "all")
  --
  -- @default = {}
  ignore_install = {},

  -- Directory to save parsers
  --
  -- Remember to append this directory to `runtimepath`
  --
  -- @default = ...
  parser_install_dir = vim.fn.stdpath("config") .. "/.local/etc/parsers",

  highlight = {
    -- Enable `treesitter` highlighting
    --
    -- @default = true
    enable = true,

    -- List of parsers with disabled highlighting
    --
    -- Use a function for more flexibility, e.g. to disable slow treesitter
    -- highlight for large files
    --
    -- For example:
    --
    -- disable = function(lang, buf)
    --   local max_filesize = 100 * 1024 -- 100 KB
    --   local ok, stats = pcall(
    --     vim.loop.fs_stat,
    --     vim.api.nvim_buf_get_name(buf)
    --   )
    --   if ok and stats and stats.size > max_filesize then
    --     return true
    --   end
    -- end
    --
    -- @default = {}
    disable = {},


    -- Setting this to true will run `:h syntax` and tree-sitter at the same
    -- time
    --
    -- 1) Set this to `true` if you depend on 'syntax' being enabled (like for
    --    indentation)
    -- 2) Using this option may slow down your editor, and you may see some
    --    duplicate highlights
    -- 3) Instead of true it can also be a list of languages
    --
    -- @default = false
    additional_vim_regex_highlighting = false,
  }
}

return options

-- init.lua ends here
