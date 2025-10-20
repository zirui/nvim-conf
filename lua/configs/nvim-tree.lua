-- Return a table, not call setup()
local options = {
  view = {
    width = function()
      -- dynamically 35% of window width
      return math.floor(vim.o.columns * 0.25)
    end,
    side = "left",
    preserve_window_proportions = true,
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "name",
  },
  sync_root_with_cwd = true,
  respect_buf_cwd = true,
}

return options

