-- ~/.config/nvim/lua/configs/noice.lua
return require("noice").setup({
  -- 命令行配置
  cmdline = {
    view = "cmdline", -- 使用默认 cmdline 视图
    format = {
      cmdline = { pattern = "^:", icon = "", lang = "vim" },
      search_down = { pattern = "^/", icon = " ", lang = "regex" },
      search_up   = { pattern = "^%?", icon = " ", lang = "regex" },
    },
  },

  -- 视图配置
  views = {
    cmdline = {
      position = {
        row = "10%",        -- 离屏幕顶部两行，可改成 "10%" 微调
        col = "50%",    -- 水平居中
      },
      size = {
        width = 50,     -- 宽度，可改成百分比或固定列数
      },
      border = {
        style = "rounded", -- 圆角
      },
      win_options = {
        winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
      },
    },
  },

  -- 额外美化
  popupmenu = {
    backend = "nui", -- 使用 nui 作为弹出菜单
    relative = "editor",
    position = {
      row = 4,
      col = "50%",
    },
    size = {
      width = 60,
      height = "auto",
    },
    border = {
      style = "rounded",
    },
    win_options = {
      winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
    },
  },
})

