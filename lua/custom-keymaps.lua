local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function Name
local keymap = vim.keymap.set

-- Remap space as leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Normal

keymap({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })
keymap('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit All' })

-- Buffers
keymap('n', '<S-l>', '<cmd>bnext<cr>', { desc = 'Next Buffer' })
keymap('n', '<S-h>', '<cmd>bprevious<cr>', { desc = 'Previous Buffer' })
keymap('n', '<leader>bb', '<cmd>e #<cr>', { desc = 'Switch to Other Buffer' })
keymap('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = 'Delete Buffer' })

-- NeoTree
keymap('n', '<C-e>', '<cmd>Neotree toggle float<cr>', { desc = 'Toggle File Explorer' })
keymap('n', '<leader>g', '<cmd>Neotree git_status toggle float<cr>', { desc = 'Toggle Git Status' })

-- Insert
keymap('i', 'jk', '<ESC>', opts)
