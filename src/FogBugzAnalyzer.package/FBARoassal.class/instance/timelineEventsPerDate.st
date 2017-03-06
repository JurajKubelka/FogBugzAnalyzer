public - views
timelineEventsPerDate
	| builder data |
	builder := RTGrapher new.
	data := RTData new.
	data interaction fixedPopupText: [ :fromToAssoc | | from to |
		from := fromToAssoc key.
		to := fromToAssoc value.
		from key printString, ' with ', from value size printString, ' events -> ', 
		to key printString, ' with ', to value size printString, ' events' ].
	data points: (dateAndEvents associations sorted: [ :a :b | a key < b key ]).
	data connectColor: Color blue.
	data y: [ :assoc | assoc value size ].
	data x: [ :assoc | (assoc key - minDate) days ].
	builder add: data. 

	builder axisX noLabel.
	builder axisY noDecimal.
	builder build.
	^ builder view.