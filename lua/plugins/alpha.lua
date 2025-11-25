return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.header.val = {
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
            [[                                                                       ]],
            [[                                                                       ]],
        }

        alpha.setup(dashboard.opts)
        dashboard.section.header.opts.hl = "DashboardHeader"

        dashboard.section.buttons.val = {
            dashboard.button("e           ", "   New File", ":ene <BAR> startinsert <CR>"),
            dashboard.button("<leader> f f", "   Find File", ":Telescope find_files <CR>"),
            dashboard.button("<leader> f t", "   Find Text", ":Telescope live_grep <CR>"),
            dashboard.button("<leader> f h", "  Recent Files", ":Telescope oldfiles <CR>"),
            dashboard.button("<leader> f u", "   Update Plugins", ":Lazy update <CR>"),
            dashboard.button("<leader> e v", "   Configuration", ":e ~/.config/nvim/init.lua <CR>"),
            dashboard.button("           q", "   Quit Neovim", ":qa<CR>"),
        }
        --dashboard.section.footer.opts.hl = "DashboardFooter"
    end,
}
