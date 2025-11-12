return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	opts = {
		-- "max-perf",
		fzf_colors = {
			["gutter"] = { "bg", "PmenuSbar" },
		},
	},
	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").files({})
			end,
			desc = "Find files in cwd",
		},
		{
			"<leader>fw",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "Find word in cwd",
		},
		{
			"<leader>fo",
			function()
				require("fzf-lua").oldfiles()
			end,
			desc = "Find old files",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "Find buffers",
		},
		{
			"<leader>fc",
			function()
				require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "Neovim configs",
		},
		{
			"<leader>fk",
			function()
				require("fzf-lua").keymaps()
			end,
			desc = "Find defined keymaps",
		},
		{
			"<leader>fr",
			function()
				require("fzf-lua").files({ cwd = vim.fn.expand("~") })
			end,
			desc = "Find files in root",
		},
		{
			"<leader>fbt",
			function()
				require("fzf-lua").treesitter()
			end,
			desc = "find treesitter symbols in buffer",
		},
		{
			"<leader>fbf",
			function()
				require("fzf-lua").treesitter({
					query = "[function]",
				})
			end,
			desc = "find function by treesitter in current buffer",
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").treesitter({
					query = "[function]",
				})
			end,
			desc = "find function by treesitter in current buffer",
		},
	},
}
