-- For `plugins/markview.lua` users.
return {
	"OXY2DEV/markview.nvim",
	lazy = true,

	-- Completion for `blink.cmp`
	dependencies = { "saghen/blink.cmp" },
	ft = "markdown",
}
