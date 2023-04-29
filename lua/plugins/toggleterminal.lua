return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,

    opts = {
      direction = "float",
      size = 20,
      open_mapping = [[<c-\>]],
    },
    keys = {
      { "<leader><Tab>t", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
    },
  },
}
