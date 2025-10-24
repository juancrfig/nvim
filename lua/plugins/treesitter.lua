return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate", -- Automatically run :TSUpdate on install
  config = function()
    require('nvim-treesitter.configs').setup {
      -- A list of parser names, or "all"
      -- We add "go" here as requested, plus some for your config
      ensure_installed = { "go", "lua", "vim", "vimdoc" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering new buffers
      auto_install = true,

      -- Enable syntax highlighting
      highlight = {
        enable = true,
      },

      -- Enable indentation
      indent = {
        enable = true,
      },
    }
  end,
}
