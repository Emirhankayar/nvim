return {
    'linux-cultist/venv-selector.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'nvim-telescope/telescope.nvim',
        'mfussenegger/nvim-dap-python',
    },
    opts = function()
        local venv_selector = require("venv-selector")

        return {
            name = {"venv", "tenv"},
            auto_refresh = true,
            pipenv_path = "/home/capitan/.venv",
            changed_venv_hooks = {
                venv_selector.hooks.pyright,
                venv_selector.hooks.pylsp,
            },
        }
    end,
    event = 'VeryLazy',
    keys = {
        { '<leader>vs', '<cmd>VenvSelect<cr>' },
        { '<leader>vc', '<cmd>VenvSelectCached<cr>' },
    },
}

