return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- tokyonight, gruvbox, moonfly
      colorscheme = "moonfly",
    },
  },
}
