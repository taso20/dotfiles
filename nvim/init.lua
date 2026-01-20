-- 行番号を表示
vim.opt.number = true
-- タブ幅を4にする
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- クリップボードをOSと共有（これでコピペが楽になります）
vim.opt.clipboard = "unnamedplus"
-- マウス操作を有効にする
vim.opt.mouse = "a"
-- 検索時に大文字小文字を無視
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- init.lua に追記
vim.opt.termguicolors = true -- 24bitカラーを有効にして、Monokaiの発色を綺麗にする
vim.keymap.set("i", "jj", "<Esc>", { silent = true })
require("config.lazy")
