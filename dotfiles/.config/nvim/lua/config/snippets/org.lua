---@diagnostic disable: undefined-global
---@diagnostic disable: unused-local

return {
	s(
		{ trig = "src ", snippetType = "autosnippet" },
		fmta(
			[[
         #+BEGIN_SRC <>
              <>
         #+END_SRC 
         ]],
			{ i(1, "lang"), i(0) }
		)
	),
}
