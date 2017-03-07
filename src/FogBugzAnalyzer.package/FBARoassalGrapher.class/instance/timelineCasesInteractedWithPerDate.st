public - views
timelineCasesInteractedWithPerDate
	| data points |
	self addImportantDates.
	self addImportantDatesOnAxisX.
	data := self newTimelineData.
	points := dateAndEvents associations collect: [ :assoc | | value |
		value := assoc value collect: #case as: Set.
		assoc key -> value ].
	data points: (points sorted: [ :a :b | a key < b key ]).
	data interaction fixedPopupText: [ :fromToAssoc | | from to |
		from := fromToAssoc key.
		to := fromToAssoc value.
		from key printString, ' with ', from value size printString, ' cases -> ', 
		to key printString, ' with ', to value size printString, ' cases' ].
	data y: [ :assoc | assoc value size ].
	builder add: data.
	self configureAxisXAndY.
	^ self build