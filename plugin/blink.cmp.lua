require("blink.cmp").setup({
  keymap = {
    preset = "none",
    ["<Tab>"] = { "accept", "snippet_forward", "fallback" },
    ["<Up>"]    = { "select_prev", "fallback" },
    ["<Down>"]  = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
    ["<C-b>"]   = { "scroll_documentation_up", "fallback" },
    ["<C-f>"]   = { "scroll_documentation_down", "fallback" },
    ["<C-k>"]   = { "show_signature", "hide_signature", "fallback" },
  },
  completion = {
    accept = {
        auto_brackets = { enabled = true },
    },
    ghost_text = { enabled = true },  -- show inline preview
    keyword = { range = "prefix" },
    menu = {
      draw = { treesitter = { "lsp" } },
    },
    trigger = { show_on_trigger_character = true },
    documentation = { auto_show = true },
  },
  appearance = { nerd_font_variant = "mono" },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  fuzzy = { implementation = "prefer_rust_with_warning" },
  signature = { enabled = true },
})
