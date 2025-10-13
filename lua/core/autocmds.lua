-- Auto Commands
-- Automatic commands for various events

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight on yank
local highlight_group = augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
  group = highlight_group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})

-- Remove trailing whitespace on save
local trim_whitespace_group = augroup("TrimWhitespace", { clear = true })
autocmd("BufWritePre", {
  group = trim_whitespace_group,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- Auto-format on save for specific filetypes
local format_group = augroup("AutoFormat", { clear = true })
autocmd("BufWritePre", {
  group = format_group,
  pattern = { "*.lua", "*.py", "*.js", "*.ts", "*.jsx", "*.tsx" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

-- Set filetype-specific settings
local filetype_group = augroup("FileTypeSettings", { clear = true })
autocmd("FileType", {
  group = filetype_group,
  pattern = { "json", "yaml", "html", "css", "javascript", "typescript" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})

-- Restore cursor position
local cursor_group = augroup("RestoreCursor", { clear = true })
autocmd("BufReadPost", {
  group = cursor_group,
  pattern = "*",
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})
