-- Which-key for keybinding hints
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup({
      plugins = {
        marks = true,
        registers = true,
        spelling = {
          enabled = true,
        },
      },
    })

    wk.register({
      ["<leader>f"] = { name = "+find" },
      ["<leader>h"] = { name = "+git hunks" },
      ["<leader>b"] = { name = "+buffer" },
      ["<leader>c"] = { name = "+code" },
      ["<leader>r"] = { name = "+rename" },
    })
  end,
}
