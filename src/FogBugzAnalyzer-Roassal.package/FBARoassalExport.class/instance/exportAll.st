export
exportAll
	self allGraphs do: [ :eachPragma | self exportPragma: eachPragma ]