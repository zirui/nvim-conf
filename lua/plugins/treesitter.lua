-- Treesitter Configuration
-- Better syntax highlighting and code understanding

require("nvim-treesitter.configs").setup({
  -- Install parsers automatically
  ensure_installed = {
    "lua",
    "vim",
    "vimdoc",
    "python",
    "javascript",
    "typescript",
    "html",
    "css",
    "json",
    "yaml",
    "bash",
    "markdown",
    "markdown_inline",
  },

  -- Install parsers synchronously (only applied to ensure_installed)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- Highlighting
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  -- Indentation
  indent = {
    enable = true,
  },

  -- Incremental selection
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      scope_incremental = "<S-CR>",
      node_decremental = "<BS>",
    },
  },
})
