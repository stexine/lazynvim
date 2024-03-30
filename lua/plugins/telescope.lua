return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- change some options
    opts = {
      defaults = {
        file_ignore_patterns = { "node_modules" },
      },
    },
  },
}
