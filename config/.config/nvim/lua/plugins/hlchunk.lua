return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hlchunk").setup({
			chunk = {
				enable = true,
				use_treesitter = true, -- Treesitterを使って正確にブロックを把握
				style = {
					{ fg = "#808080" }, -- Monokai-Proに合う控えめなグレー（お好みで変更可）
				},
			},
			indent = {
				enable = true,
				use_treesitter = true,
			},
		})
	end,
}
