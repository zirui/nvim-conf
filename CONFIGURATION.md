# Configuration Overview

This document provides an overview of the Neovim configuration structure and organization.

## Directory Structure

```
nvim-conf/
├── init.lua                 # Main entry point
├── lua/
│   ├── core/               # Core configuration
│   │   ├── options.lua     # Neovim options and settings
│   │   ├── keymaps.lua     # Key mappings
│   │   ├── autocmds.lua    # Auto commands
│   │   └── lazy.lua        # Plugin manager setup
│   └── plugins/            # Plugin configurations
│       ├── treesitter.lua  # Syntax highlighting
│       ├── lsp.lua         # Language Server Protocol
│       ├── cmp.lua         # Auto-completion
│       ├── telescope.lua   # Fuzzy finder
│       ├── nvim-tree.lua   # File explorer
│       ├── lualine.lua     # Status line
│       └── gitsigns.lua    # Git integration
├── README.md               # User documentation
├── LICENSE                 # MIT License
└── .gitignore             # Git ignore patterns

```

## Core Components

### init.lua
The main entry point that:
- Sets the leader key to Space
- Loads core settings (options, keymaps, autocmds)
- Initializes the plugin manager

### lua/core/options.lua
General Neovim settings including:
- Line numbers (absolute and relative)
- Indentation (4 spaces, smart indent)
- Search behavior (smart case, incremental)
- UI appearance (colors, cursor line, scrolloff)
- Behavior (mouse, clipboard, undo)
- Window splitting preferences

### lua/core/keymaps.lua
Custom key mappings for:
- Window navigation (Ctrl+h/j/k/l)
- Window resizing (Ctrl+arrows)
- Buffer navigation (Shift+h/l)
- Split management (leader+sv/sh/sc)
- Tab management (leader+tn/tc/to)
- Quick save/quit (leader+w/q)

### lua/core/autocmds.lua
Automatic commands for:
- Highlight on yank (visual feedback)
- Remove trailing whitespace on save
- Auto-format on save for specific file types
- Filetype-specific settings (2-space indent for web files)
- Restore cursor position when opening files

### lua/core/lazy.lua
Plugin manager configuration using lazy.nvim with:
- Automatic plugin installation
- Lazy loading for performance
- Plugin specifications and dependencies
- Color scheme setup

## Plugin Configurations

### Treesitter (treesitter.lua)
- Syntax highlighting for 12+ languages
- Automatic parser installation
- Incremental selection with Enter key
- Smart indentation

### LSP (lsp.lua)
- Mason for easy LSP installation
- Pre-configured servers (Lua, Python, TypeScript, HTML, CSS, JSON)
- LSP key mappings (go to definition, hover, rename, etc.)
- Diagnostic configuration with icons
- Auto-completion capabilities

### Auto-completion (cmp.lua)
- Sources: LSP, snippets, buffer, path
- Tab/Shift-Tab navigation
- Documentation preview
- Bordered windows

### Telescope (telescope.lua)
- Fuzzy finder for files, text, buffers
- Custom key mappings (leader+ff/fg/fb/fh/fo/fc)
- Optimized layout
- Quick navigation

### Nvim-tree (nvim-tree.lua)
- File explorer sidebar
- Git integration
- Icon support
- Toggle with leader+e
- Find current file with leader+ef

### Lualine (lualine.lua)
- Status line with Tokyo Night theme
- Shows: mode, branch, diff, diagnostics, filename, encoding, filetype, location
- Global status line
- Extension support

### Gitsigns (gitsigns.lua)
- Git signs in gutter (add, change, delete)
- Hunk navigation ([c, ]c)
- Stage/reset hunks (leader+hs/hr)
- Blame line (leader+hb)
- Diff view (leader+hd)

## Color Scheme

Tokyo Night - A dark theme with:
- Good contrast
- Support for modern features
- Treesitter integration
- LSP highlighting

## Installation Notes

1. First startup will install lazy.nvim automatically
2. Lazy.nvim will then install all plugins
3. Mason will install configured language servers
4. Treesitter will compile parsers for syntax highlighting

## Customization

To customize this configuration:

1. **Change theme**: Edit `lua/core/lazy.lua`, replace tokyonight with another theme
2. **Add plugins**: Add new plugin specs to `lua/core/lazy.lua`
3. **Modify settings**: Edit `lua/core/options.lua`
4. **Add keymaps**: Edit `lua/core/keymaps.lua`
5. **Configure plugins**: Edit files in `lua/plugins/`

## Performance

This configuration is optimized for performance:
- Lazy loading of plugins
- Efficient plugin manager (lazy.nvim)
- No heavy startup plugins
- Smart file loading

## Requirements

- Neovim >= 0.9.0
- Git (for plugin installation)
- C compiler (for Treesitter)
- Ripgrep (for Telescope grep)
- Nerd Font (for icons)

## Troubleshooting

Common issues and solutions:

1. **Plugins not loading**: Run `:Lazy sync`
2. **LSP not working**: Check `:LspInfo` and `:Mason`
3. **Icons broken**: Install a Nerd Font
4. **Slow startup**: Check `:Lazy profile`
5. **Errors on startup**: Check `:messages`
