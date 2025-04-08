return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",  -- only loads when you enter Insert mode
  config = function()
    require("nvim-autopairs").setup()
  end
}

