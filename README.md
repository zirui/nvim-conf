# nvim-conf
Configuration file with custom preferences for Neovim

## Features

This Neovim configuration includes essential plugins for efficient development:

- **Plugin Manager**: [lazy.nvim](https://github.com/folke/lazy.nvim) - Modern plugin manager
- **Fuzzy Finder**: [Telescope](https://github.com/nvim-telescope/telescope.nvim) - Find files, grep, and more
- **Syntax Highlighting**: [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Advanced syntax highlighting
- **LSP Support**: Native LSP with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and [Mason](https://github.com/williamboman/mason.nvim)
- **Autocompletion**: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion engine
- **File Explorer**: [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) - File tree explorer
- **Git Integration**: [gitsigns](https://github.com/lewis6991/gitsigns.nvim) - Git decorations
- **Status Line**: [lualine](https://github.com/nvim-lualine/lualine.nvim) - Beautiful status line
- **Buffer Line**: [bufferline](https://github.com/akinsho/bufferline.nvim) - Tab-like buffer line
- **Comments**: [Comment.nvim](https://github.com/numToStr/Comment.nvim) - Easy commenting
- **Auto Pairs**: [nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Auto close brackets
- **Indent Guides**: [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim) - Visual indent guides
- **Keybinding Hints**: [which-key](https://github.com/folke/which-key.nvim) - Keybinding popup
- **Color Scheme**: [Catppuccin](https://github.com/catppuccin/nvim) - Beautiful color scheme

## Installation

### Prerequisites

- Neovim >= 0.9.0
- Git
- A C compiler (for Treesitter)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope live grep)
- A [Nerd Font](https://www.nerdfonts.com/) (optional, for icons)

### Setup

1. Backup your existing Neovim configuration (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

2. Clone this repository:
   ```bash
   git clone https://github.com/zirui/nvim-conf.git ~/.config/nvim
   ```

3. Start Neovim:
   ```bash
   nvim
   ```

4. Lazy.nvim will automatically install all plugins on first launch.

5. After installation, restart Neovim.

## Key Mappings

Leader key is set to `Space`.

### General
- `<Esc>` - Clear search highlights
- `<C-h/j/k/l>` - Navigate between windows
- `<S-h/l>` - Navigate between buffers
- `<C-Up/Down/Left/Right>` - Resize windows

### File Explorer
- `<leader>e` - Toggle file explorer

### Telescope
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Find buffers
- `<leader>fh` - Help tags
- `<leader>fr` - Recent files

### LSP
- `gd` - Go to definition
- `gD` - Go to declaration
- `gr` - Go to references
- `gi` - Go to implementation
- `K` - Hover documentation
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code action
- `<leader>f` - Format file

### Git
- `]c` - Next git hunk
- `[c` - Previous git hunk
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line

### Comments
- `gcc` - Toggle line comment
- `gc` - Toggle comment (with motion)
- `gb` - Toggle block comment

### Buffer
- `<leader>bp` - Toggle pin buffer
- `<leader>bP` - Delete non-pinned buffers

## Customization

All configuration files are located in:
- `init.lua` - Main configuration file
- `lua/config/options.lua` - General options
- `lua/config/keymaps.lua` - Key mappings
- `lua/plugins/` - Plugin configurations

Feel free to modify these files to suit your preferences.

## Updating

To update plugins, open Neovim and run:
```vim
:Lazy sync
```

## Troubleshooting

If you encounter any issues:

1. Check Neovim version: `:version`
2. Check plugin status: `:Lazy`
3. Check LSP status: `:LspInfo`
4. Check Treesitter status: `:TSInstallInfo`

## License

MIT
