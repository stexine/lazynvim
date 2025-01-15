-- Use your favorite package manager to install, for example in lazy.nvim
--  Optionally, you can also install nvim-telescope/telescope.nvim to use some search functionality.
return {
  {
    enabled = true,
    "sourcegraph/sg.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", --[[ "nvim-telescope/telescope.nvim ]]
    },

    -- If you have a recent version of lazy.nvim, you don't need to add this!
    build = "nvim -l build/init.lua",

    -- config setup
    config = function()
      require("sg").setup({
        enable_cody = true,
        event = "InsertEnter",
        -- auth_strategy = 'environment-variables'
      })
    end,
  },
}
