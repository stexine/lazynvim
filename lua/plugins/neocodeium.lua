return {
  {
    "monkoose/neocodeium",
    event = "VeryLazy",
    config = function()
      local neocodeium = require("neocodeium")
      neocodeium.setup()

      -- use meta key to accept code suggestions
      vim.keymap.set("i", "<A-Space>", neocodeium.accept)
    end,
  },
}
