require("flash").setup({})

vim.keymap.set({ "n", "v" }, "s", function()
  require("flash").jump()
end, { desc = "Flash jump" })

vim.keymap.set({ "n", "v" }, "S", function()
  require("flash").treesitter()
end, { desc = "Flash treesitter" })
