-- Setup leader
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- open file explorer
vim.keymap.set('n', '<leader>sp', vim.cmd.Ex)

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- To move a selected line :
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Deleting the content of a line :
vim.keymap.set('n', '<leader>D', '0<S-D>')

-- Put the cursor in the center when using C-u and C-d
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'D', 'Dzz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Remap to copy and paste from the clipboard

vim.keymap.set('x', '<leader>p', [["_dP]])

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])

vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

vim.keymap.set('n', '<C-ù>', ':MarkdownPreview<C-R>')

vim.keymap.set('n', '<leader><leader>s', '<cmd>source ~/.config/nvim/lua/tkonfig/plugins/luasnips.lua<CR>')
