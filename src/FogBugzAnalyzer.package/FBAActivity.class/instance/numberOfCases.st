convenience
numberOfCases
	^ events 
		ifNil: 0
		ifNotNil: [ :collection | (collection collect: #case as: Set) size ]