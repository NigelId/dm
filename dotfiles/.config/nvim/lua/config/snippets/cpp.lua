---@diagnostic disable: undefined-global
---@diagnostic disable: unused-local

-- local ls = require("luasnip")
-- local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
-- local i = ls.insert_node
-- local f = ls.function_node
-- local d = ls.dynamic_node
-- local fmt = require("luasnip.extras.fmt").fmt
-- local fmta = require("luasnip.extras.fmt").fmta
-- local rep = require("luasnip.extras").rep

return {
	-- s({
	-- 	trig = "pp",
	-- 	snippetType = "autosnippet",
	-- }, fmta("std::cout<< <> ;", i(1, "args"))),

	s(
		{ trig = "pp", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
		fmta("std::cout<< <>  ;", i(1, "args"))
	),
	s(
		{ trig = "pn", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
		fmta("std::cout<< <> << '\\n' ;", i(1, "args"))
	),
	s(
		{ trig = "dant", regTrig = true, wordTrig = false, snippetType = "autosnippet" },
		fmta("std::vector<<<>>>", i(1, "Typename T"))
	),
}
