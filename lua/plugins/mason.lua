return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "gopls",
        "php-cs-fixer",
        "phpactor",
        "vue-language-server",
        "prettier",
        "typescript-language-server",
        "eslint_d",
      },
    },
  },
}
