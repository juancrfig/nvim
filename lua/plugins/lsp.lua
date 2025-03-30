return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Java LSP setup: Eclipse JDT Language Server
      require("lspconfig").jdtls.setup {
        -- Command to start jdtls. Adjust the path as needed.
        cmd = { "path/to/jdtls", "-data", "/path/to/your/workspace" },
        -- Automatically detect the project root (e.g., by a .git folder or build files)
        root_dir = require("lspconfig").util.root_pattern(".git", "mvnw", "gradlew"),
        settings = {
          java = {
            format = {
              enabled = true,
            },
            -- Additional Java-specific settings can be added here
          },
        },
      }
    end,
  },
}

