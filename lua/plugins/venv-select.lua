local function shorter_name(filename)
   return filename:gsub(os.getenv("HOME"), "~"):gsub("/bin/python", "")
end
return {
	"linux-cultist/venv-selector.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-dap",
		"mfussenegger/nvim-dap-python", --optional
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
	},
	lazy = false,
	branch = "regexp", -- This is the regexp branch, use this for the new version
	keys = {
		{ "<leader>v", "<cmd>VenvSelect<cr>" },
	},
	---@type venv-selector.Config
	opts = {
		-- Your settings go here
        on_telescope_result_callback = shorter_name,

		search = {
			my_venvs = {
                workspace = false,
				command = "fd /bin/python$ ~/.venv --full-path",

                on_telescope_result_callback = shorter_name

			},
		},
	},
}
