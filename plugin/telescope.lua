local builtin = require("telescope.builtin")

require("telescope").setup({
  defaults = {
    layout_strategy = "horizontal",
    layout_config = {
      preview_cutoff = 1,
      width = 0.90,
      height = 0.85,
      horizontal = {
      preview_width = 0.55,
      previewer = true,
      },
      vertical = {
        preview_height = 0.50,
      },
    },
    file_ignore_patterns = {
      ".git/.*",
      "node%_modules/.*",
    },
    },
    pickers = {
      find_files = {
      hidden = true,
      find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
    },
    live_grep = {
      additional_args = { "--hidden", "--glob", "!.git/*" },
      layout_strategy = "vertical",
      previewer = true,
    },
  },
})

vim.keymap.set("n", "<C-p>",      builtin.find_files,{ desc = "Find files" })
vim.keymap.set("n", "<C-f>",      builtin.live_grep,             { desc = "Search text" })
vim.keymap.set("n", "<leader>fb", builtin.buffers,               { desc = "Buffers" })
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols,  { desc = "LSP symbols" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics,           { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>fg", builtin.git_status,            { desc = "Git status" })
