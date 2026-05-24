require("ibl").setup({
  indent = {
    char = "│",  -- the guide line character
  },
  scope = {
    enabled = true,   -- highlight the current scope
    show_start = true,
    show_end = false,
  },
  exclude = {
    filetypes = { "dashboard", "help", "terminal", "lazy", "mason"},
  },
})
