return {
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		ft = { "org" },
		config = function()
			require("orgmode").setup({
				org_agenda_files = "~/orgfiles/**/*",
				org_default_notes_file = "~/orgfiles/refile.org",
			})

			require("org-bullets").setup()
		end,
	},
	{ "akinsho/org-bullets.nvim", lazy = true, dependencies = {
		"nvim-orgmode/orgmode",
	} },
}
