return {
  "ribru17/bamboo.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("bamboo").setup({
      style = "vulgaris",
      transparent = true,
    })
    require("bamboo").load()
  end,
}
