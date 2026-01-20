return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- ASCIIアートのロゴ（ここに好きなロゴを貼れます）
        dashboard.section.header.val = {
            [[                               __                ]],
            [[  ___     __    __   __   __  /\_\    ___ ___    ]],
            [[ /' _ `\ /'__`\/\ \/\ \ /\ \/\ \/\ \ /' __` __`\  ]],
            [[ /\ \/\ \/\  __/\ \ \_/ |\ \ \_/ \ \ \/\ \/\ \/\ \ ]],
            [[ \ \_\ \_\ \____\\ \___/  \ \___/ \ \_\ \_\ \_\ \_\]],
            [[  \/_/\/_/\/____/ \/__/    \/__/   \/_/\/_/\/_/\/_/]],
        }

        -- メニューの設定
        dashboard.section.buttons.val = {
            dashboard.button("e", "󰙅  Explorer", ":Neotree toggle<CR>"),
            dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
            dashboard.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
            dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
            dashboard.button("q", "󰅚  Quit", ":qa<CR>"),
        }

        alpha.setup(dashboard.opts)
    end,
}
