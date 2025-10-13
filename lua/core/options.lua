-- Core Neovim Options
-- General settings for better editing experience

local opt = vim.opt

-- Line Numbers
opt.number = true           -- Show line numbers
opt.relativenumber = true   -- Show relative line numbers
opt.numberwidth = 4         -- Set number column width

-- Indentation
opt.tabstop = 4             -- Number of spaces tabs count for
opt.shiftwidth = 4          -- Size of an indent
opt.expandtab = true        -- Use spaces instead of tabs
opt.autoindent = true       -- Copy indent from current line
opt.smartindent = true      -- Smart autoindenting

-- Search
opt.ignorecase = true       -- Ignore case in search
opt.smartcase = true        -- Override ignorecase if search contains uppercase
opt.hlsearch = true         -- Highlight search results
opt.incsearch = true        -- Incremental search

-- Appearance
opt.termguicolors = true    -- True color support
opt.background = "dark"     -- Dark background
opt.signcolumn = "yes"      -- Always show sign column
opt.cursorline = true       -- Highlight current line
opt.wrap = false            -- Don't wrap lines
opt.scrolloff = 8           -- Keep 8 lines above/below cursor
opt.sidescrolloff = 8       -- Keep 8 columns left/right of cursor

-- Behavior
opt.mouse = "a"             -- Enable mouse support
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.undofile = true         -- Persistent undo
opt.backup = false          -- Don't create backup files
opt.writebackup = false     -- Don't create backup before writing
opt.swapfile = false        -- Don't create swap files
opt.updatetime = 300        -- Faster completion
opt.timeoutlen = 500        -- Time to wait for mapped sequence

-- Split Windows
opt.splitright = true       -- Split vertical windows to the right
opt.splitbelow = true       -- Split horizontal windows below

-- Command Line
opt.cmdheight = 1           -- Command line height
opt.showmode = false        -- Don't show mode (shown in statusline)
opt.showcmd = true          -- Show command in statusline

-- Completion
opt.completeopt = "menu,menuone,noselect" -- Completion options

-- File Encoding
opt.encoding = "utf-8"      -- File encoding
opt.fileencoding = "utf-8"  -- File encoding for writing
