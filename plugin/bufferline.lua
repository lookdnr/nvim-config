require("bufferline").setup({
  options = {
    mode                     = "buffers",
    numbers                  = "none",
    close_command            = "bdelete! %d",
    diagnostics              = "nvim_lsp",
    show_buffer_close_icons  = true,
    show_close_icon          = false,
    separator_style          = "slant",
    modified_icon            = "●",
    offsets = {
      {
        filetype  = "oil",
        text      = "File Explorer",
        highlight = "Directory",
        separator = true,
      },
    },
  },
})

vim.keymap.set("n", "<Tab>",      "<CMD>BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>",    "<CMD>BufferLinePrev<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "<leader>bd", "<CMD>bdelete<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "<C-w>", "<CMD>bdelete<CR>", { desc = "Close buffer" })
