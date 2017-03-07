public - views
timelineEventsPerDate
	| data sprints deco releases events |
	builder := RTGrapher new.
	builder extent: 1000 @ 400.
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

	sprints := FBADateFactory dates select: #isSprint.
	self addDecoratorWithDates: sprints color: (Color green alpha: 0.3).
	releases := FBADateFactory dates select: #isRelease.
	self addDecoratorWithDates: releases color: (Color red alpha: 0.3).
	events := FBADateFactory dates select: #isConference.
	self addDecoratorWithDates: events color: (Color yellow alpha: 0.3).

	deco := RTHorizontalValuesDecorator new.
	deco addAll: (sprints collect: [ :date | (date date - minDate) days ]).
	deco labelConversion: [ :value | minDate + value days ].
	deco labelRotation: -25.
	builder addDecorator: deco.

	builder axisX noTick; noLabel.
	builder axisY noDecimal.
	builder build.
	^ builder view.