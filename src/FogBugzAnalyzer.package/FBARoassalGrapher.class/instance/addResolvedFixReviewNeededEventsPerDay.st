adding - datasets - events
addResolvedFixReviewNeededEventsPerDay
	^ self 
		addDataSetForEventNamed: 'Resolved (Fix Review Needed)'
		recognizedBy: #isResolvedFixReviewNeeded 
		color: self colors sixth