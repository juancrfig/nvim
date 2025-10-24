vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.showmode = true

vim.opt.clipboard = "unnamedplus"

vim.keymap.set('n', '<leader>c', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>he', 'oif err != nil {<CR>}<Esc>Oreturn err')
vim.keymap.set('n', '<leader>ff', ':!gofmt -w %<CR><CR>')
vim.keymap.set('n', '<Space><Space>', ':Ex<CR>', { noremap = true, silent = true })
