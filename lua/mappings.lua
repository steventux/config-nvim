require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map('i', '<C-a>', function ()
  vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Copilot Accept', noremap = true, silent = true })

map("n", "<Leader>ta", ":!pytest -vv<CR>", { desc = "Run all tests" })
map("n", "<Leader>tt", ":!pytest -vv %<CR>", { desc = "Run tests in file" })

map("n", "<C-s>", ":lua require('neotest').summary.toggle()<CR>", { desc = "Toggle Neotest summary pane" })
map("n", "<C-t>", ":lua require('neotest').run.run(vim.fn.getcwd())<CR>", { desc = "Run Neotest in current directory" })
map("n", "<C-f>", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = "Run Neotest on current file" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
