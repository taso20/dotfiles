return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'auto', -- 後でテーマを入れた時に合わせると綺麗です
        component_separators = '|',
        section_separators = { left = '', right = '' }, -- 丸みのあるデザインに
      }
    })
  end
}
