-- Optional but recommended: set up keymaps on LSP attach
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf }

    vim.keymap.set("n", "gd",  vim.lsp.buf.definition,      opts)
    vim.keymap.set("n", "gD",  vim.lsp.buf.declaration,     opts)
    vim.keymap.set("n", "gi",  vim.lsp.buf.implementation,  opts)
    vim.keymap.set("n", "gr",  vim.lsp.buf.references,      opts)
    vim.keymap.set("n", "K",   vim.lsp.buf.hover,           opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,   opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "[d",  vim.diagnostic.goto_prev,    opts)
    vim.keymap.set("n", "]d",  vim.diagnostic.goto_next,    opts)
  end,
})

vim.keymap.set({ "n", "i", "v" }, "<S-Left>",  "<S-Left>",  {})
vim.keymap.set({ "n", "i", "v" }, "<S-Right>", "<S-Right>", {})
vim.keymap.set({ "n", "i", "v" }, "<S-Up>",    "<S-Up>",    {})
vim.keymap.set({ "n", "i", "v" }, "<S-Down>",  "<S-Down>",  {})


-- Cut (Ctrl+X)
vim.keymap.set({ "n", "v" }, "<C-x>", '"+d', {})
vim.keymap.set("i", "<C-x>", '<C-o>"+d', {})

-- Copy (Ctrl+C)
vim.keymap.set({ "n", "v" }, "<C-c>", '"+y', {})
vim.keymap.set("i", "<C-c>", '<C-o>"+y', {})

-- Paste (Ctrl+V)
vim.keymap.set({ "n", "v" }, "<C-v>", '"+p', {})
vim.keymap.set("i", "<C-v>", '<C-r>+', {})

-- Select all (Ctrl+A)
vim.keymap.set({ "n", "v", "i" }, "<C-a>", "<Esc>ggVG", {})

-- Save
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<CMD>w<CR>", { desc = "Save file" })

-- Delete word with Ctrl + backspace
vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "Delete word" })

