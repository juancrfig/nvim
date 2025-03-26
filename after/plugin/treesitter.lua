return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    
    configs.setup({
      -- Languages you want to install
      ensure_installed = { 
        "c", "lua", "vim", "vimdoc", 
        "csv", "bash", "python", 
        "javascript", "html",
	"java", "css", "typescript",
	"http"
      },
      -- Disable synchronous installation
      sync_install = false,
      
      -- Enable syntax highlighting
      highlight = { enable = true },
      
      -- Enable indentation
      indent = { enable = true },
    })
  end
}
