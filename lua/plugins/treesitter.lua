return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    
    configs.setup({
      -- Languages you want to install
      ensure_installed = { 
        "c", "lua", "vim", "vimdoc", 
        "java", "css", "python", 
        "javascript", "html", "python",
	"bash", "csv", "typescript",
	"json", "markdown", "regex",
	"sql"	
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
