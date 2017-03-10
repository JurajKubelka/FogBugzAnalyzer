adding events
withStart: startDateAndTime end: endDateAndTime
	"It returns new collection with two extra events that defines borders of a timeline.
	It is supposed that there are at least one object (event)."
	^ self start: startDateAndTime end: endDateAndTime in: self