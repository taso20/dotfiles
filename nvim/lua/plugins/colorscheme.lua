return {
	{
		"polirritmico/monokai-nightasty.nvim",
		lazy = false, -- 起動時にすぐに適用するため
		priority = 1000, -- 他のプラグインより先に読み込む
		config = function()
			-- モード（dark/light）やスタイルの微調整が可能
			require("monokai-nightasty").setup({
				dark_style_background = "default", -- "default", "dark", "transparent"
			})
			-- テーマを適用
			vim.cmd("colorscheme monokai-nightasty")
		end,
	},
}
