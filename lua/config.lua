-- config.lua

-- `prgn-nvim` configuration object

prgn = {
  options = {
    -- Completion

    -- Completion menu settings
    --
    -- @default = { "menu", "preview" }
    completeopt = { "menuone", "preview", "noinsert", "noselect" },

    -- Maximum completion menu height
    --
    -- @default = 0
    completeheight = 8,

    -- Maximum completion menu width
    --
    -- @default = 15
    completewidth = 15,

    -- Indentation

    -- Preserve indent from previous line
    --
    -- @default = true
    autoindent = true,

    -- Number of spaces in tab
    --
    -- @default = 8
    tabsize = 2,

    -- Replace tabs for spaces
    --
    -- @default = false
    expandtab = true,

    -- Language

    -- List of language parsers
    --
    -- @default = {}
    parsers = {
      "lua"
    },

    -- List of language servers
    --
    -- @default = {}
    servers = {
      "sumneko_lua"
    },

    -- Search

    -- Highlight search all matches
    --
    -- @default = true
    hlsearch = true,

    -- Ignore case when using a search pattern
    --
    -- @default = false
    ignorecase = true,

    -- Perform search incrementally
    --
    -- @default = true
    incsearch = true,

    -- Override `ignorecase` when search pattern has upper case characters
    --
    -- @default = false
    smartcase = true,

    -- Selection

    -- Use system clipboard
    --
    -- @default = false
    clipboard = true,

    -- Undo

    -- Perist file changes
    --
    -- It is recommended to enable `autosave` feature along with this option
    --
    -- @default = false
    persistundo = true,

    -- User Interface

    -- Enable mouse
    --
    -- @default = true
    mouse = false,

    -- Display line numbers
    --
    -- @default = false
    number = true,

    -- Initial line number margin width
    --
    -- For some reason a margin of `n` is used for an intended `n-1` width
    --
    -- @default = 4
    numberwidth = 4,

    -- Display relative line numbers
    --
    -- @default = false 
    relativenumber = false,

    -- Display commands
    --
    -- @default = true
    showcmd = false,

    -- Display editing mode
    --
    -- @default = true
    showmode = false,

    -- Display signcolumn
    --
    -- @default = false
    signcolumn = true,

    -- Minimum number of screen lines around cursor
    --
    -- @default = 0
    scrolloff = 8,

    -- Split windows horzontally to the bottom
    --
    -- @default = false
    splitbelow = true,

    -- Split windows vertically to the right
    --
    -- @default = false
    splitright = true,

    -- Display statusline
    --
    -- @default = true
    statusline = true,

    -- Wrap long lines
    --
    -- @default = true
    wrap = false,

    -- Display trailing whitespace
    --
    -- @default = false
    trailing = true,

    -- Miscellaneous

    -- Swap file updating intervals (ms)
    --
    -- @default = 4000
    updatetime = 100

  },

  core = {
    "packer",     -- Packer Manager
    "plenary",    -- Co-routine library
    "prgn-theme", -- Colourscheme
    "treesitter"  -- Syntax parser
  },

  features = {
    -- Editing

    "autocompletion",  -- Enhance completions (requires `snippets`)
    "autopairs",       -- Automatically pair characters
    -- "autosave",        -- Automatically write the buffers
    "lsp",             -- Intelligent language features
    "snippets",        -- Code snippets (requires `autocompletion`)

    -- User Interface

    "colourize",  -- Highlight colour hexcodes
    -- "dashboard",  -- Fancy startup screen
    "gitsigns",   -- Git-related indicators
    "icons",      -- Common developer icons
    "indent",     -- Indentation guides
    "notify",     -- Modern stylish notifications
    "outline",    -- Document symbols outliner
    "statusline", -- Minimal status line
    "twilight",   -- Dim inactive portions of code
  },

  tools = {
    -- "dap",           -- Debugger
    "fugitive",      -- Git front-end
    -- "rest",          -- HTTP client
    "telescope",     -- Fuzzy finder for lists + File browser
    -- "toggletasks",   -- Task runner
    -- "toggleterm"     -- Terminal inside Neovim
  },

  keymaps = {
    ["i"] = {
      ["jk"] = { "<Escape>", "Switch to NORMAL mode" }
    },

    ["n"] = {
      ["<C-h>"] = { "<C-w>h" },
      ["<C-j>"] = { "<C-w>j" },
      ["<C-k>"] = { "<C-w>k" },
      ["<C-l>"] = { "<C-w>l" },

      ["<Leader>bfb"]   = { ":Telescope buffers<CR>", "[F]ind [B]uffers" },
      ["<Leader>bdb"]   = { ":bdelete<CR>", "[D]elete [B]uffer" },
      ["<Leader>fff"]   = { ":Telescope find_files hidden=false no_ignore=true<CR>", "[F]ind [F]iles]" },
      ["<Leader>ffr"]   = { ":Telescope oldfiles<CR>", "[F]ind [R]ecent [F]iles" },
      ["<Leader>fvf"]   = { ":Telescope file_browser [hidden=true no_ignore=true path=%:p:h<CR>", "[V]iew [F]iles" },
      ["<Leader>pfp"]   = { ":Telescope projects<CR>", "[F]ind [P]rojects" },
      ["<Leader>ppp"]   = { ":Git push<CR>", "[P]ush [P]roject" },
      ["<Leader>pvd"]   = { ":Telescope diagnostics<CR>", "[V]iew [D]iagnostics" },
      ["<Leader>pvb"]   = { ":Telescope git_branches<CR>", "[V]iew [B]ranches" },
      ["<Leader>pvh"]   = { ":Telescope git_commits<CR>", "[V]iew [B]ranches" },
      ["<Leader>pvs"]   = { ":Git<CR>", "[V]iew Project [S]tatus" },
      ["<Leader>pmp"]   = { ":Git merge ", "[M]erge [P]roject" },
      ["<Leader>sfd"]   = { vim.lsp.buf.definition, "[F]ind [D]efinition" },
      ["<Leader>sfi"]   = { vim.lsp.buf.implementation, "[F]ind [I]mplementation" },
      ["<Leader>sffs"]  = { require ("telescope.builtin").lsp_document_symbols, "[F]ind [F]ile [S]ymbols" },
      ["<Leader>sfr"] = { require ("telescope.builtin").lsp_references, "[F]ind [R]eferences" },
      ["<Leader>sfws"] = { require ("telescope.builtin").lsp_dynamic_workspace_symbols, "[F]ind [W]orkspace [S]ymbols" },
      ["<Leader>svh"] = { vim.lsp.buf.hover, "[V]iew [H]elp" },
      ["<Leader>svs"] = { ":SymbolsOutline<CR>", "[V]iew [S]ymbols" },
    }
  }
}

-- config.lua ends here
