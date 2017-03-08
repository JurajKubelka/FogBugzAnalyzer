public - views
timelineActiveDevelopesPerDate
	| data points |
	self addImportantDates.
	self addImportantDatesOnAxisX.
	data := self newTimelineDataBarShape.
	points := dateAndEvents associations
		collect: [ :assoc | | dictionary |
			dictionary := Dictionary new.
			assoc value do: [ :event | dictionary 
				at: event user 
				ifPresent: [ :col | col add: event ] ifAbsentPut: [ OrderedCollection with: event ] ].
			assoc key -> dictionary ].
	data points: (points sorted: [ :a :b | a key < b key ]).
	data y: [ :assoc | assoc value size ].
	data label: 'Active developers per day'.
	builder add: data.
	self configureAxisXAndY: 'Number of developers'.
	^ self build