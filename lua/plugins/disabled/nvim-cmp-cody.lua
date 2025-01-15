return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "sourcegraph/sg.nvim" },
    --- @param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "cody" } }))
      opts.mapping = cmp.config.mapping(vim.list_extend(opts.mapping, {
        ["<c-a>"] = cmp.mapping.complete({
          sources = {
            { name = "cody" },
          },
        }),
      }))
    end,
  },
}
