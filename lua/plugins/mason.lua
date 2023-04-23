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
						"vetur-vls",
						"prettier",
          },
        },
      },
}