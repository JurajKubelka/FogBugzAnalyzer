export
exportSelector: methodSelector
	| view pragma |
	pragma := self allGraphs detect: [ :eachPragma | eachPragma methodSelector = methodSelector ].
	self exportPragma: pragma