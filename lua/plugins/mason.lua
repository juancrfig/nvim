return {
  -- Mason for managing external tooling
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- optional: update registry after installation
    config = function()
      require("mason").setup()
    end,
  },
  -- Mason LSP config for bridging mason with lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "jdtls" },  -- Automatically install jdtls
      })
    end,
  },
  -- Neovim LSP configurations
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").jdtls.setup {
        -- You may need to adjust the command or settings depending on your setup.
        cmd = { "jdtls" },  -- mason sets up the path to jdtls for you
        root_dir = require("lspconfig").util.root_pattern(".git", "mvnw", "gradlew"),
        settings = {
          java = {
            format = {
              enabled = true,
            },
          },
        },
      }
    end,
  },
}

