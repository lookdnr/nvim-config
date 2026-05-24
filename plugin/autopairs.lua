require("nvim-autopairs").setup({
  check_ts = true,  -- use treesitter to check for pairs
})

-- Make autopairs work with blink.cmp
local autopairs = require("nvim-autopairs.completion.handlers")
require("blink.cmp").setup({
  -- tell blink to use autopairs handler on confirm
  completion = {
    accept = {
      auto_brackets = {
        enabled = true,
      },
    },
  },
})
