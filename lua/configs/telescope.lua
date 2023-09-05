require('telescope').setup {}

local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', "<leader>ff", "<cmd> Telescope find_files <CR>", { desc = "Find files" })
vim.keymap.set('n', "<leader>fa", "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", { desc = "Find all" })
vim.keymap.set('n', "<leader>fw", "<cmd> Telescope live_grep <CR>", { desc = "Live grep" })
vim.keymap.set('n', "<leader>fb", "<cmd> Telescope buffers <CR>", { desc = "Find buffers" })
vim.keymap.set('n', "<leader>fh", "<cmd> Telescope help_tags <CR>", { desc = "Help page" })
vim.keymap.set('n', "<leader>fo", "<cmd> Telescope oldfiles <CR>", { desc = "Find oldfiles" })
vim.keymap.set('n', "<leader>fz", "<cmd> Telescope current_buffer_fuzzy_find <CR>", { desc = "Find in current buffer" })
vim.keymap.set('n', "<leader>cm", "<cmd> Telescope git_commits <CR>", { desc = "Git commits" })
vim.keymap.set('n', "<leader>gt", "<cmd> Telescope git_status <CR>", { desc = "Git status" })
vim.keymap.set('n', "<leader>ma", "<cmd> Telescope marks <CR>", { desc = "telescope bookmarks" })
