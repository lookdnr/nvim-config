require("telescope").setup({
  defaults = {
    layout_strategy = "horizontal",
    layout_config = { preview_width = 0.55 },
  },
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", builtin.find_files,  { desc = "Find files" })
vim.keymap.set("n", "<C-f>", builtin.live_grep,   { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers,     { desc = "Buffers" })
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "LSP symbols" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Diagnostics" })
