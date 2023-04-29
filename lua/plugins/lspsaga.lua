return {
  {
    "glepnir/lspsaga.nvim",
    config = true,
    keys = {
      { "gh", "<cmd>Lspsaga lsp_finder<CR>", desc = "lsp hint" },
      { ";", "<cmd>Lspsaga hover_doc<CR>", desc = "hover doc" },
    },
  },
}
