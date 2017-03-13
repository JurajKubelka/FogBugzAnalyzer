adding - datasets - events
addDataSetForEventNamed: eventName recognizedBy: aBlock color: aColor
	"aBlock receives a FogBugzEvent object and returns true if should be included to a data set."
	| data points |
	data := self newTimelineDataColored: aColor.
	points := dateAndEvents associations
		collect: [ :assoc | | events |
			events := OrderedCollection new.
			assoc value do: [ :event | 
				(aBlock value: event) ifTrue: [ 
					events add: event ] ].
			assoc key -> events ].
	data points: (points sorted: [ :a :b | a key < b key ]).
	data y: [ :assoc | assoc value size ].
	data label: eventName asString, ' events per day'.
	builder add: data.
	^ data