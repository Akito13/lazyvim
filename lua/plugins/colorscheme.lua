return {
  "ribru17/bamboo.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("bamboo").setup({
      style = "vulgaris",
      transparent = true,
      highlights = {
        LineNrAbove = { fg = "#c6e2ff", bold = true },
        LineNr = { fg = "#fff", bold = true },
        LineNrBelow = { fg = "#ff7373", bold = true },
      },
    })
    require("bamboo").load()
  end,
}
