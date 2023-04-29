return {
  {
    "ray-x/lsp_signature.nvim",
    config = true,
    enabled = false,
    keys = {
      {
        "ga",
        function()
          require("lsp_signature").toggle_float_win()
        end,
        desc = "toggle signature",
      },
    },
  },
}
