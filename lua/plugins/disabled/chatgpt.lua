return {
  {
    "jackMort/ChatGPT.nvim",
    enabled = false,
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("chatgpt").setup({
        -- use your own api key, or set api_key_cmd to a command that outputs your api key
        api_key_cmd = "lpass show -p api/token/chatgpt/default",
      })
    end,
  },
}
