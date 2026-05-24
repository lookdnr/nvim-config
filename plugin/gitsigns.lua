require("gitsigns").setup({
  signs = {
    add          = { text = "│" },
    change       = { text = "│" },
    delete       = { text = "_" },
    topdelete    = { text = "‾" },
    changedelete = { text = "~" },
  },
  current_line_blame = true,  -- shows git blame inline on current line
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns
    local opts = { buffer = bufnr }

    -- Navigation
    vim.keymap.set("n", "]h", gs.next_hunk,  { buffer = bufnr, desc = "Next hunk" })
    vim.keymap.set("n", "[h", gs.prev_hunk,  { buffer = bufnr, desc = "Prev hunk" })

    -- Stage/reset hunks
    vim.keymap.set("n", "<leader>hs", gs.stage_hunk,  { buffer = bufnr, desc = "Stage hunk" })
    vim.keymap.set("n", "<leader>hr", gs.reset_hunk,  { buffer = bufnr, desc = "Reset hunk" })
    vim.keymap.set("n", "<leader>hu", gs.undo_stage_hunk, { buffer = bufnr, desc = "Undo stage hunk" })

    -- Stage/reset whole buffer
    vim.keymap.set("n", "<leader>hS", gs.stage_buffer,  { buffer = bufnr, desc = "Stage buffer" })
    vim.keymap.set("n", "<leader>hR", gs.reset_buffer,  { buffer = bufnr, desc = "Reset buffer" })

    -- Preview
    vim.keymap.set("n", "<leader>hp", gs.preview_hunk,  { buffer = bufnr, desc = "Preview hunk" })

    -- Blame
    vim.keymap.set("n", "<leader>hb", gs.blame_line,    { buffer = bufnr, desc = "Blame line" })
    vim.keymap.set("n", "<leader>hB", gs.blame,         { buffer = bufnr, desc = "Blame buffer" })

    -- Diff
    vim.keymap.set("n", "<leader>hd", gs.diffthis,      { buffer = bufnr, desc = "Diff this" })
  end,
})
