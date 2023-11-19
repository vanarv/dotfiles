return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "pyright",
        "lua_ls",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true,
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",
        "stylua", -- lua formatter
        "isort", -- python import sorter
        "black", -- python formatter
        "mypy", -- python linter
        "ruff", -- python linter and formatter 
        "pylint", -- python linter
      }
    })
  end,
}
