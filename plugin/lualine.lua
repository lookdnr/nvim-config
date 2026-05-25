require("lualine").setup({
  options = {
    theme = "catppuccin-mocha",
    component_separators = { left = "", right = "" },
    section_separators   = { left = "", right = "" },
    globalstatus = true,  -- single statusline across all splits
    disabled_filetypes = { statusline = { 
        "dashboard", 
        "alpha", 
        "starter" 
    }, 
  },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
      "branch",
      {
        "diff",
        symbols = { added = " ", modified = " ", removed = " " },
      },
      {
        "diagnostics",
        symbols = { error = " ", warn = " ", info = " ", hint = " " },
      },
    },
    lualine_c = {
      {
        "filename",
        path = 1,          -- show relative path
        symbols = {
          modified = " ●", -- unsaved changes
          readonly = " ", -- readonly files
          unnamed  = "[No Name]",
        },
      },
    },
    lualine_x = { "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
