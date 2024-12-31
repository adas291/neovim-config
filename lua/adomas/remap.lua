vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Disable default Ctrl-B and Ctrl-F mappings for cmp
-- vim.api.nvim_set_keymap('n', '<C-b>', '<Nop>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-f>', '<Nop>', { noremap = true, silent = true })

