return {
  -- add blink.compat
  {
    "saghen/blink.compat",
    -- use the latest release, via version = '*', if you also use the latest release for blink.cmp
    version = "*",
    -- lazy.nvim will automatically load the plugin when it's required by blink.cmp
    lazy = true,
    -- make sure to set opts so that lazy.nvim calls blink.compat's setup
    opts = {
      enable_events = true,
    },
    -- config setup
    config = function()
      require("sg").setup({
        enable_cody = true,
        event = "InsertEnter",
        -- auth_strategy = 'environment-variables'
      })
    end,
  },

  {
    "saghen/blink.cmp",
    version = "0.*",
    dependencies = {
      -- add source
      {
        "sourcegraph/sg.nvim",
        dependencies = {
          "nvim-lua/plenary.nvim",
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
    },
    opts = {
      appearance = {
        -- sets the fallback highlight groups to nvim-cmp's highlight groups
        -- useful for when your theme doesn't support blink.cmp
        -- will be removed in a future release, assuming themes add support
        use_nvim_cmp_as_default = false,
        -- set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- adjusts spacing to ensure icons are aligned
        nerd_font_variant = "mono",
      },
    },
    sources = {
      -- remember to enable your providers here
      default = { "cody", "lsp", "path", "snippets", "buffer" },
      compat = { "cody" },
      providers = {
        -- create provide
        cody = {
          name = "cody", -- IMPORTANT: use the same name as you would for nvim-cmp
          module = "blink.compat.source",

          -- all blink.cmp source config options work as normal:
          score_offset = -3,

          -- this table is passed directly to the proxied completion source
          -- as the `option` field in nvim-cmp's source config
          --
          -- this is NOT the same as the opts in a plugin's lazy.nvim spec
          opts = function(_, opts)
            local cmp = require("blink-compat")
            opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "cody" } }))
            opts.mapping = cmp.config.mapping(vim.list_extend(opts.mapping, {
              ["<c-a>"] = cmp.mapping.complete({
                sources = {
                  { name = "cody" },
                },
              }),
            }))
          end,

          -- opts = {
          --   -- this is an option from this extenal source
          -- },
        },
      },
    },
  },
}
