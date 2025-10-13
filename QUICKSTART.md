# Quick Start Guide

Get up and running with this Neovim configuration in minutes.

## Prerequisites

Before installing, make sure you have:

1. **Neovim** (version 0.9.0 or higher)
   ```bash
   # Check version
   nvim --version
   ```

2. **Git**
   ```bash
   # Check version
   git --version
   ```

3. **A C Compiler** (for Treesitter)
   - Linux: `gcc` or `clang`
   - macOS: Xcode command line tools
   - Windows: MinGW or MSVC

4. **Ripgrep** (optional, for Telescope live grep)
   ```bash
   # Install on Linux
   sudo apt install ripgrep

   # Install on macOS
   brew install ripgrep

   # Install on Windows
   choco install ripgrep
   ```

5. **Nerd Font** (optional, for icons)
   - Download from [nerdfonts.com](https://www.nerdfonts.com/)
   - Recommended: JetBrainsMono Nerd Font, FiraCode Nerd Font, or Hack Nerd Font
   - Set as your terminal font

## Installation

### Step 1: Backup Existing Configuration

If you have an existing Neovim configuration:

```bash
# Backup config
mv ~/.config/nvim ~/.config/nvim.backup

# Backup data
mv ~/.local/share/nvim ~/.local/share/nvim.backup

# Backup cache
mv ~/.cache/nvim ~/.cache/nvim.backup
```

### Step 2: Clone This Repository

```bash
git clone https://github.com/zirui/nvim-conf.git ~/.config/nvim
```

### Step 3: Start Neovim

```bash
nvim
```

On first startup:
- Lazy.nvim will be automatically installed
- All plugins will be downloaded and installed
- This may take 2-5 minutes depending on your internet connection
- You'll see progress in the Lazy.nvim window

### Step 4: Install Language Servers

After plugins are installed:

1. Open Mason:
   ```
   :Mason
   ```

2. Navigate with `j/k` or arrow keys
3. Install servers by pressing `i` on the highlighted item
4. Or wait for automatic installation of configured servers

Configured servers:
- lua_ls (Lua)
- pyright (Python)
- tsserver (TypeScript/JavaScript)
- html (HTML)
- cssls (CSS)
- jsonls (JSON)

## First Steps

### Basic Navigation

1. **Open file explorer**: Press `Space` + `e`
2. **Find files**: Press `Space` + `f` + `f`
3. **Search in files**: Press `Space` + `f` + `g`
4. **Switch buffers**: Press `Shift` + `h` or `Shift` + `l`

### Essential Commands

```
:Lazy          " Open plugin manager
:Mason         " Open LSP/tool installer
:checkhealth   " Check Neovim health
:LspInfo       " Check LSP status
```

### Quick Edits

1. Open a file:
   ```
   :e filename.lua
   ```

2. Save:
   - Press `Space` + `w`
   - Or type `:w` and press Enter

3. Quit:
   - Press `Space` + `q`
   - Or type `:q` and press Enter

## Testing the Configuration

### Test Syntax Highlighting

Create a test file:

```bash
nvim test.lua
```

Type some Lua code:
```lua
local function greet(name)
  print("Hello, " .. name .. "!")
end

greet("World")
```

You should see:
- ✅ Colored syntax highlighting
- ✅ Line numbers on the left
- ✅ Cursor line highlighted

### Test Auto-completion

1. In the test file, start typing: `vim.`
2. You should see a completion menu appear
3. Use `Tab` to navigate, `Enter` to select

### Test LSP

1. Create a Python file:
   ```bash
   nvim test.py
   ```

2. Type:
   ```python
   def hello():
       print("Hello, World!")
   ```

3. Hover over `hello` and press `K` - you should see documentation
4. Press `gd` to go to definition

### Test Telescope

1. Press `Space` + `f` + `f` to open file finder
2. Start typing a filename
3. See results update in real-time
4. Press `Enter` to open a file

## Common Issues

### Plugins Not Loading

**Solution**:
```
:Lazy sync
```
Then restart Neovim.

### LSP Not Working

**Solution**:
1. Check LSP status: `:LspInfo`
2. Check Mason: `:Mason`
3. Install required server if missing
4. Restart LSP: `:LspRestart`

### Icons Showing as Boxes

**Solution**:
1. Install a Nerd Font
2. Set it as your terminal font
3. Restart your terminal

### Slow Startup

**Solution**:
1. Check startup time: `nvim --startuptime startup.log`
2. Review the log file
3. Check plugin loading: `:Lazy profile`

### Treesitter Errors

**Solution**:
```
:TSUpdate
```
This will recompile all parsers.

## Next Steps

1. **Read the full README**: Check `README.md` for all key mappings
2. **Explore plugins**: Open `:Lazy` to see all installed plugins
3. **Customize**: Edit files in `lua/core/` and `lua/plugins/`
4. **Learn Neovim**: Run `:Tutor` for a built-in Neovim tutorial

## Getting Help

- **Neovim Documentation**: `:help`
- **Plugin Help**: `:help <plugin-name>`
- **Key Mappings**: Press `Space` (wait a moment for which-key popup)
- **Configuration Details**: Read `CONFIGURATION.md`

## Daily Workflow

### Opening a Project

```bash
cd ~/my-project
nvim .
```

This opens Neovim with file explorer.

### Typical Session

1. Press `Space` + `e` to toggle file tree
2. Navigate and open files
3. Press `Space` + `f` + `f` to quick-find files
4. Press `Space` + `f` + `g` to search in files
5. Edit files with LSP assistance
6. Save with `Space` + `w`
7. Navigate between buffers with `Shift` + `h/l`

Enjoy your new Neovim configuration! 🎉
