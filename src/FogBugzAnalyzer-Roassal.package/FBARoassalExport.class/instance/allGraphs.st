accessing
allGraphs
	| pragmas files |
	pragmas := Pragma allNamed: #graphOrder:filename: in: self class sortedByArgument: 1.
	files := pragmas collect: [ :pragma | pragma argumentAt: 2 ] as: Set.
	self assert: [ pragmas size = files size ].
	^ pragmas