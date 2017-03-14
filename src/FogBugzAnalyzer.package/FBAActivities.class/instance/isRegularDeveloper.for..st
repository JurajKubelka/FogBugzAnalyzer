testing
isRegularDeveloper: aFogBugzUser for: aFBAActivity 
	| numberOfEvents numberOfDays |
	numberOfEvents := 0.
	numberOfDays := 0.
	self do: [ :eachActivity | 
		eachActivity isRegularEvent ifTrue: [ 
			numberOfEvents := numberOfEvents + (eachActivity events count: [ :eachEvent | eachEvent user = aFogBugzUser ]).
			numberOfDays := numberOfDays + (eachActivity days) ] ].
	^ numberOfEvents / numberOfDays > 0.9