require("catppuccin").setup({
  flavour = "mocha",
  transparent_background = true,
  integrations = {
    telescope    = true,
    bufferline   = true,
    gitsigns     = true,
    treesitter   = true,
    indent_blankline = { enabled = true },
    mason        = true,
    blink_cmp    = true,
    dashboard    = true,
  },
})

vim.cmd.colorscheme("catppuccin")
