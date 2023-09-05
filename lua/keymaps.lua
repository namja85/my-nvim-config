local keymap = vim.keymap.set

-- normal mode
keymap('n', '<Esc>', ':noh<CR>', { desc = 'Clear highlights' })
keymap('n', '<leader>n', '<cmd> set nu! <CR>', { desc = 'Toggle line number' })
keymap('n', '<leader>rn', '<cmd> set rnu! <CR>', { desc = 'Toggle relative number' })
keymap('n', '<leader>wr', '<cmd> set wrap! <CR>', { desc = 'Toggle wrap' })
keymap('n', '<C-s>', '<cmd> w <CR>', { desc = 'Save file' })
keymap('n', '<leader>e', '<cmd> Ex <CR>', { desc = 'open netrw' })
keymap('n', '<leader>b', '<cmd> enew <CR>', { desc = 'New buffer' })
keymap('n', '<leader>x', '<cmd> bd <CR>', { desc = 'Delete buffer' })
keymap('n', '<Tab>', '<cmd> bn <CR>', { desc = 'Next buffer' })
keymap('n', '<S-Tab>', '<cmd> bp <CR>', { desc = 'Previous buffer' })

-- input mode
keymap('i', '<C-h>', '<Left>', { desc = 'Move left' });
keymap('i', '<C-l>', '<Right>', { desc = 'Move right' });
keymap('i', '<C-j>', '<Down>', { desc = 'Move down' });
keymap('i', '<C-k>', '<Up>', { desc = 'Move up' });
keymap('i', '<C-e>', '<End>', { desc = 'End of line' });

-- selection mode
keymap('x', 'p', 'p:let @+=@0<CR>:let @"=@0<CR>', { desc = 'Don\'t copy replaced text' })
