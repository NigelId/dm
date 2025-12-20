---@diagnostic disable

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
   branch="master",
	lazy = false,
	dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
	config = function()
		require("nvim-treesitter.configs").setup({
			-- language parsers that MUST be installed
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"css",
				"dockerfile",
				"go",
				"html",
				"javascript",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"rust",
				"typescript",
				"yaml",
			},
			auto_install = false, -- auto-install any other parsers on opening new language files
			sync_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<CR>",
					node_incremental = "<CR>",
					scope_incremental = "<TAB>",
					node_decremental = "<S-TAB>",
				},
			},

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
