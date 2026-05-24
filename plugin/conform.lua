-- conform auto formats python and cpp on save
require("conform").setup({
	formatters_by_ft = {
		python = { "black" },
		c = { "clang-format" },
		cpp = { "clang-format" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true
	}
}
)
