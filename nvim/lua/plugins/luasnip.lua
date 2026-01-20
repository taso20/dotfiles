return {
  -- スニペットエンジン
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    dependencies = {
      "rafamadriz/friendly-snippets", -- 一般的な言語のスニペット集
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load() -- friendly-snippetsを読み込む
    require("snippets.cpp")  
  end,
  },
  -- 補完エンジン(nvim-cmp)とスニペットをつなぐ
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
    },
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, { name = "luasnip" })
    end,
  },
}
