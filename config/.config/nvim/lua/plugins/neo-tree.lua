return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        -- キーマップの設定
        vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { silent = true })

        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
                follow_current_file = {
                    enabled = true,
                },
            },
            window = {
                mappings = {
                    ["<cr>"] = "drop", -- ウィンドウを選択して開く（通常は今のAlphaが選ばれます）
                    -- またはシンプルに ["<cr>"] = "drop", としてもOKです
                },
            },
            -- ここからが「画面を広く使う」ための追加設定
            event_handlers = {
                {
                    event = "file_opened",
                    handler = function(file_path)
                        -- ファイルを開いたらNeo-treeを自動で閉じる
                        require("neo-tree.command").execute({ action = "close" })
                        local buffers = vim.api.nvim_list_bufs()
                        for _, buf in ipairs(buffers) do
                            if vim.api.nvim_buf_is_loaded(buf) then
                                local buf_name = vim.api.nvim_buf_get_name(buf)
                                -- 名前がない、または Alpha 関連のバッファなら削除
                                if buf_name == "" or buf_name:match("alpha") then
                                    vim.api.nvim_buf_delete(buf, { force = true })
                                end
                            end
                        end
                    end,
                },
            },
        })
    end,
}
