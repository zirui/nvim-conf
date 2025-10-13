-- Custom Neovim Configuration
-- Author: zirui
-- Description: Personal Neovim configuration with custom preferences

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Load core settings
require("core.options")
require("core.keymaps")
require("core.autocmds")

-- Load plugin manager and plugins
require("core.lazy")
