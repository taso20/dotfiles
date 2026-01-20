-- lua/plugins/format.lua
return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" }, -- 保存時に動くようにする（超重要）
	cmd = { "ConformInfo" }, -- :ConformInfo で設定を確認できる
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			cpp = { "clang-format" },
			c = { "clang-format" }, -- C言語も一応入れておくと安心
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
