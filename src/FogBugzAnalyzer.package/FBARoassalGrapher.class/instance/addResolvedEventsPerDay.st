adding - datasets - events
addResolvedEventsPerDay
	^ self 
		addDataSetForEventNamed: 'Resolved' 
		recognizedBy: [ :event | event isResolvedNotFixReviewNeeded ]
		color: self colors fifth