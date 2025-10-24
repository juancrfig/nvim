return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon"):setup()

    local harpoon_list = require("harpoon"):list()

    -- Basic keymaps
    -- Add file to harpoon list
    vim.keymap.set("n", "<leader>a", function() harpoon_list:add() end, 
      { desc = "[A]dd file to Harpoon list" })

    -- Toggle the harpoon UI
    vim.keymap.set("n", "<leader>s", function() require("harpoon").ui:toggle_quick_menu(harpoon_list) end,
      { desc = "Toggle [M]ark (Harpoon) UI" })

    -- Keymaps to navigate to your marked files
    vim.keymap.set("n", "<leader>1", function() harpoon_list:select(1) end, 
      { desc = "Harpoon: Go to file 1" })
      
    vim.keymap.set("n", "<leader>2", function() harpoon_list:select(2) end, 
      { desc = "Harpoon: Go to file 2" })
      
    vim.keymap.set("n", "<leader>3", function() harpoon_list:select(3) end, 
      { desc = "Harpoon: Go to file 3" })
      
    vim.keymap.set("n", "<leader>4", function() harpoon_list:select(4) end, 
      { desc = "Harpoon: Go to file 4" })

  end,
}
