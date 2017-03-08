public - views
timelineEventsPerDate
	| data |
	self addImportantDates.
	self addImportantDatesOnAxisX.
	data := self newTimelineDataDotShape.
	data
		points: (dateAndEvents associations sorted: [ :a :b | a key < b key ]).
	data y: [ :assoc | assoc value size ].
	data label: 'Developer activities per day'.
	builder add: data.
	self configureAxisXAndY: 'Number of events'.
	^ self build