# nvim-conf

A modern, feature-rich Neovim configuration with custom preferences for enhanced productivity and better development experience.

## Features

- **Modern Plugin Manager**: Uses [lazy.nvim](https://github.com/folke/lazy.nvim) for fast and efficient plugin management
- **LSP Support**: Built-in Language Server Protocol support with Mason for easy installation
- **Smart Completions**: Intelligent auto-completion with nvim-cmp
- **Fuzzy Finding**: Fast file navigation with Telescope
- **Syntax Highlighting**: Enhanced syntax highlighting with Treesitter
- **File Explorer**: Beautiful file tree with nvim-tree
- **Git Integration**: Git signs and commands with gitsigns
- **Beautiful UI**: Tokyo Night color scheme with lualine status bar
- **Auto Formatting**: Automatic code formatting on save
- **Custom Keymaps**: Productive key mappings for common operations

## Requirements

- Neovim >= 0.9.0
- Git
- A C compiler (for Treesitter)
- [ripgrep](https://github.com/BurntSushi/ripgrep) (for Telescope live grep)
- A [Nerd Font](https://www.nerdfonts.com/) (for icons)

## Installation

### Backup Existing Configuration

If you have an existing Neovim configuration, back it up first:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
```

### Clone This Repository

```bash
git clone https://github.com/zirui/nvim-conf.git ~/.config/nvim
```

### Start Neovim

```bash
nvim
```

On first startup, lazy.nvim will automatically install all plugins. This may take a few minutes.

## Key Mappings

Leader key is set to `<Space>`.

### General

| Key | Action |
|-----|--------|
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<leader>wq` | Save and quit |
| `<leader>h` | Clear search highlighting |

### Window Navigation

| Key | Action |
|-----|--------|
| `<C-h>` | Move to left window |
| `<C-j>` | Move to down window |
| `<C-k>` | Move to up window |
| `<C-l>` | Move to right window |

### Window Management

| Key | Action |
|-----|--------|
| `<leader>sv` | Split window vertically |
| `<leader>sh` | Split window horizontally |
| `<leader>sc` | Close current window |
| `<C-Up>` | Increase window height |
| `<C-Down>` | Decrease window height |
| `<C-Left>` | Decrease window width |
| `<C-Right>` | Increase window width |

### Buffer Navigation

| Key | Action |
|-----|--------|
| `<S-l>` | Next buffer |
| `<S-h>` | Previous buffer |

### File Explorer (nvim-tree)

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle file explorer |
| `<leader>ef` | Find current file in explorer |

### Telescope (Fuzzy Finder)

| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Find buffers |
| `<leader>fh` | Help tags |
| `<leader>fo` | Old files |
| `<leader>fc` | Commands |

### LSP

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gr` | Go to references |
| `K` | Hover documentation |
| `<C-k>` | Signature help |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>d` | Show diagnostics |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

### Git (gitsigns)

| Key | Action |
|-----|--------|
| `]c` | Next hunk |
| `[c` | Previous hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hS` | Stage buffer |
| `<leader>hR` | Reset buffer |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>tb` | Toggle line blame |
| `<leader>hd` | Diff this |

### Editing

| Key | Action |
|-----|--------|
| `<` (visual) | Decrease indent |
| `>` (visual) | Increase indent |
| `J` (visual) | Move line down |
| `K` (visual) | Move line up |
| `p` (visual) | Paste without yanking |

## Plugin List

- **folke/tokyonight.nvim** - Color scheme
- **nvim-treesitter/nvim-treesitter** - Syntax highlighting
- **neovim/nvim-lspconfig** - LSP configurations
- **williamboman/mason.nvim** - LSP/DAP/Linter installer
- **hrsh7th/nvim-cmp** - Auto-completion
- **nvim-telescope/telescope.nvim** - Fuzzy finder
- **nvim-tree/nvim-tree.lua** - File explorer
- **nvim-lualine/lualine.nvim** - Status line
- **lewis6991/gitsigns.nvim** - Git integration
- **windwp/nvim-autopairs** - Auto pairs
- **numToStr/Comment.nvim** - Comment plugin
- **lukas-reineke/indent-blankline.nvim** - Indent guides
- **folke/which-key.nvim** - Keybinding hints

## Customization

You can customize this configuration by modifying the files in the `lua/` directory:

- `lua/core/options.lua` - General Neovim options
- `lua/core/keymaps.lua` - Key mappings
- `lua/core/autocmds.lua` - Auto commands
- `lua/core/lazy.lua` - Plugin specifications
- `lua/plugins/*.lua` - Individual plugin configurations

## Language Server Installation

After starting Neovim, you can install language servers using Mason:

```
:Mason
```

This will open the Mason UI where you can install language servers, formatters, and linters.

The following language servers are configured to auto-install:
- lua_ls (Lua)
- pyright (Python)
- tsserver (TypeScript/JavaScript)
- html (HTML)
- cssls (CSS)
- jsonls (JSON)

## Troubleshooting

### Icons not displaying correctly

Install a [Nerd Font](https://www.nerdfonts.com/) and set it as your terminal font.

### Plugins not loading

Try running `:Lazy sync` to update all plugins.

### LSP not working

1. Check if the language server is installed: `:Mason`
2. Check LSP status: `:LspInfo`
3. Restart the LSP: `:LspRestart`

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Contributing

Feel free to fork this repository and customize it to your needs!
