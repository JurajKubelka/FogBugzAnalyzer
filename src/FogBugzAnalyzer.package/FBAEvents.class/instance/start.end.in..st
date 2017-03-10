adding events
start: startDateAndTime end: endDateAndTime in: aCollection
	"It returns new collection with two extra events that defines borders of a timeline.
	It is supposed that there are at least one object (event)."
	^ aCollection
		addFirst: (self first before: startDateAndTime);
		addLast: (self last after: endDateAndTime);
		yourself