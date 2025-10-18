local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup({
  view = {
    width = 80,   -- 设置默认宽度为 40
    side = "left",
    preserve_window_proportions = true,
  },
  -- 你可以添加其他 nvim-tree 配置
})

