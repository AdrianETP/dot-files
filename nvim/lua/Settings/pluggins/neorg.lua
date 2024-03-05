return {
    "nvim-neorg/neorg",
    dependencies = { "nvim-lua/plenary.nvim" },
    build = ":Neorg sync-parsers",
    -- tag = "*",
    lazy = false,  -- enable lazy load
    ft = "norg",   -- lazy load on file type
    cmd = "Neorg", -- lazy load on command
    config = function()
        require("neorg").setup {
            load = {
                ["core.defaults"] = {},  -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = {      -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "/notes",
                        },
                    },
                },
                ["core.journal"] = {
                    config = {
                        journal_folder = "/notes/journal"
                    }
                }
            },
        }
        vim.keymap.set("n", "<leader>nt", function()
            vim.cmd("Neorg journal today")
        end)

        vim.keymap.set("n", "<leader>nT", function()
            vim.cmd("Neorg journal tomorrow")
        end)
        vim.keymap.set("n", "<leader>nn", function()
            vim.cmd("Neorg keybind norg core.dirman.new.note")
        end)
        vim.keymap.set("n", "<leader>no", function()
            vim.cmd("Neorg workspace notes")
        end)
    end,
}
