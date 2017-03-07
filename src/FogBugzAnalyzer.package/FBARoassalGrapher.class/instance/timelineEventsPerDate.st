public - views
timelineEventsPerDate
	| data |
	self addImportantDates.
	self addImportantDatesOnAxisX.
	data := self newTimelineData.
	data points: (dateAndEvents associations sorted: [ :a :b | a key < b key ]).
	data interaction fixedPopupText: [ :fromToAssoc | | from to |
		from := fromToAssoc key.
		to := fromToAssoc value.
		from key printString, ' with ', from value size printString, ' events -> ', 
		to key printString, ' with ', to value size printString, ' events' ].
	data y: [ :assoc | assoc value size ].
	builder add: data.
	self configureAxisXAndY.
	^ self build