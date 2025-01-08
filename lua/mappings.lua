require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local del = vim.keymap.del


del("i", "<C-h>") -- Disable the NvChad navigation mapping which conflicts with insert mode backspace key.

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map('i', '<C-a>', function ()
  vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = 'Copilot Accept', noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


map("n", "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, { desc = "Run File (Neotest)" })
map("n", "<leader>ta", function() require("neotest").run.run(vim.uv.cwd()) end, { desc = "Run All Test Files (Neotest)" })
map("n", "<leader>tr", function() require("neotest").run.run() end, { desc = "Run Nearest (Neotest)" })
map("n", "<leader>tl", function() require("neotest").run.run_last() end, { desc = "Run Last (Neotest)" })
map("n", "<leader>ts", function() require("neotest").summary.toggle() end, { desc = "Toggle Summary (Neotest)" })
map("n", "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, { desc = "Show Output (Neotest)" })
map("n", "<leader>tO", function() require("neotest").output_panel.toggle() end, { desc = "Toggle Output Panel (Neotest)" })
map("n", "<leader>tS", function() require("neotest").run.stop() end, { desc = "Stop (Neotest)" })
map("n", "<leader>tw", function() require("neotest").watch.toggle(vim.fn.expand("%")) end, { desc = "Toggle Watch (Neotest)" })

map("n", "<leader>ac", function()
  require("cmp").setup({ enabled = not require("cmp").get_config().enabled })
end, { desc = "Toggle autocomplete" })
