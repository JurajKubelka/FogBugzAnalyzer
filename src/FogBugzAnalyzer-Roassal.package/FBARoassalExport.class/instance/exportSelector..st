export
exportSelector: methodSelector
	| pragma |
	pragma := self allGraphs detect: [ :eachPragma | eachPragma methodSelector = methodSelector ].
	self exportPragma: pragma