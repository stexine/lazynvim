return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,

    opts = {
      direction = "float",
      size = 20,
      open_mapping = [[<c-\>]],
      float_opts = {
        border = "double", -- like `size`, width and height can be a number or function which is passed the current terminal
      },
      winbar = {
        enabled = false,
        name_formatter = function(term) --  term: Terminal
          return term.name
        end,
      },
    },
    keys = {
      { "<leader>t", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
    },
  },
}
