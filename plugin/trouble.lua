require("trouble").setup({
  modes = {
    diagnostics = {
      auto_open   = false,
      auto_close  = true,   -- close when no more issues
    },
  },
  icons = {
    error   = " ",
    warning = " ",
    hint    = " ",
    info    = " ",
  },
})

vim.keymap.set("n", "<leader>xx", "<CMD>Trouble diagnostics toggle<CR>",              { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>xb", "<CMD>Trouble diagnostics toggle filter.buf=0<CR>", { desc = "Buffer diagnostics" })
vim.keymap.set("n", "<leader>xs", "<CMD>Trouble symbols toggle<CR>",                  { desc = "Symbols" })
vim.keymap.set("n", "<leader>xl", "<CMD>Trouble lsp toggle<CR>",                      { desc = "LSP definitions" })
