adding - datasets
addIntroCases
	| data points |
	data := self newTimelineDataColored: self introCasesColor.
	points := client introCases groupedBy: [ :case | case dateOpened asDate ].
	data points: (points associations sorted: [ :a :b | a key < b key ]).
	data y: [ :assoc | assoc value size ].
	data label: 'Intro Cases Per Day'.
	builder add: data.
	^ data