-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath })
end

vim.opt.rtp:prepend(lazypath)

require("options")
require("keymaps")

require("lazy").setup({
  -- autocomplete
  { "saghen/blink.cmp", version = "v1" },
  -- LSP/ linter/ formatter management
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  -- colour scheme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- code parser
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "lua", "python", "c", "cpp", "vimdoc", "markdown", "markdown_inline", "latex" },
      auto_install = true,
    },
  },
  -- linting
  { "mfussenegger/nvim-lint" },
  -- auto formatting
  { "stevearc/conform.nvim" },
  -- file search/ ripgrep
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope.nvim" },
  -- git integrations
  { "lewis6991/gitsigns.nvim" },
  { "tpope/vim-fugitive" },
  -- auto pair brackets
  { "windwp/nvim-autopairs" },
  -- indent guide
  { "lukas-reineke/indent-blankline.nvim" },
  -- nicer status
  { "nvim-lualine/lualine.nvim" },
  -- buffer line
  { "akinsho/bufferline.nvim" },
  -- dashboard
  {
    "nvimdev/dashboard-nvim", 
    dependencies = { "folke/noice.nvim" },
  },
  -- icons
  { "nvim-tree/nvim-web-devicons" },
  -- markdown rendering
  { "preservim/vim-markdown" },
  -- word seeking
  { "folke/flash.nvim" },
  -- bulk commenting
  { "numToStr/Comment.nvim" },
  -- better error management
  { "folke/trouble.nvim" },
  -- todo comments
  { 
    "folke/todo-comments.nvim",  
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
  },
  -- terminal
  { "akinsho/toggleterm.nvim" },
  -- noice
  { "folke/noice.nvim", 
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify"
    },
  },
  -- markdown support
  { "iamcco/markdown-preview.nvim", ft = { "markdown" }, build = "cd app && npm install" },
})
