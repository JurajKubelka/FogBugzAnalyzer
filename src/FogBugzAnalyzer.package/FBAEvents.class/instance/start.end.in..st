adding events
start: startDateAndTime end: endDateAndTime in: aCollection
	"It returns new collection with two extra events that defines borders of a timeline.
	It is supposed that there are at least one object (event)."
	self first startDate < startDateAndTime ifTrue: [ aCollection addFirst: (self first before: endDateAndTime) ].
	self last endDate < endDateAndTime ifTrue: [ aCollection addLast: (self last after: endDateAndTime) ].
	^ aCollection