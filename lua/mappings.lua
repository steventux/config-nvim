require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map('i', '<C-a>', function ()
  vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Copilot Accept', noremap = true, silent = true })

map("n", "<leader>tt", ":!pytest %<CR>", { desc = "Run pytest on current file" })
map("n", "<leader>ta", ":!pytest<CR>", { desc = "Run pytest suite" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
