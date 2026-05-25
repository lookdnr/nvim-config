require("ibl").setup({
  indent = {
    char = "│",
  },
  scope = {
    enabled = true,
    show_start = true,
    show_end = false,
  },
  exclude = {
    filetypes = { "dashboard", "help", "terminal", "lazy", "mason", "noice", "" },
    buftypes = { "nofile", "prompt", "popup", "terminal" },
  },
})
