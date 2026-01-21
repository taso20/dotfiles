-- lua/plugins/lsp.lua
return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "clangd" },
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			-- 最新の書き方: vim.lsp.config を使用
			-- nvim-cmp との連携用
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- clangd の設定
			vim.lsp.config("clangd", {
				cmd = { "clangd", "--background-index", "-j=2", "--header-insertion=never", -- これを追記：勝手な include を止める
        "--header-insertion-decorators=false", -- 補完候補に include 追加のマークを出さない},
    },
				capabilities = capabilities,
			})

			-- LSP を有効化 (これを忘れると動きません)
			vim.lsp.enable("clangd")

			-- キーマップ設定（LspAttach）は変更なしでOK
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(ev)
					local opts = { buffer = ev.buf }
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
				end,
			})
		end,
	},
}
