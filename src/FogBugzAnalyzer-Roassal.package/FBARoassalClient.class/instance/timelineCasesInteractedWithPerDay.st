public - views
timelineCasesInteractedWithPerDay
	| data points |
	self addImportantDates.
	self addImportantDatesOnAxisX.
	data := self newTimelineDataDotShape.
	points := dateAndEvents associations
		collect: [ :assoc | 
			| value |
			value := assoc value collect: #case as: Set.
			assoc key -> value ].
	data points: (points sorted: [ :a :b | a key < b key ]).
	data y: [ :assoc | assoc value size ].
	data label: 'Interacted cases per day'.
	builder add: data.
	self configureAxisXAndY: 'Number of interacted cases'.
	^ self build