return {
	"nvim-treesitter/nvim-treesitter-textobjects",
	lazy = true,
	config = function()
		require("nvim-treesitter.configs").setup({
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = { query = "@function.outer", desc = "Select outer part of the function" },
						["if"] = { query = "@function.inner", desc = "Select inner part of the function" },
						["ac"] = { query = "@class.outer", desc = "Select outer part of the class" },
						["ic"] = { query = "@class.inner", desc = "Select inner part of the class" },
						["ao"] = { query = "@loop.outer", desc = "Select outer part of the loop" },
						["io"] = { query = "@loop.inner", desc = "Select inner part of the loop" },
						["ai"] = { query = "@conditional.outer", desc = "Select outer part of the conditional" },
						["ii"] = { query = "@conditional.inner", desc = "Select inner part of the conditional" },
					},
				},
			},
		})
	end,
}
