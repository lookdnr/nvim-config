-- Mason is a package manager for neovim
-- It simplifies the process of installing and managing tools like
-- LSPs, linters, and formatters

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "clangd" },
  automatic_installation = true,
})
