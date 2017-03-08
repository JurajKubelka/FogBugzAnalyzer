adding - datasets - events
addResolvedEventsPerDay
	^ self 
		addDataSetForEventNamed: 'Resolved' 
		recognizedBy: [ :event | event isResolved and: [ event isResolvedFixReviewNeeded not ] ]
		color: self colors fifth