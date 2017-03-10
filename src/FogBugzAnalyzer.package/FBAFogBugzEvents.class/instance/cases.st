accessing
cases
	^ ((self collect: #case as: Set) as: FBAFogBugzCases) sorted: [ :a :b | a id < b id ]