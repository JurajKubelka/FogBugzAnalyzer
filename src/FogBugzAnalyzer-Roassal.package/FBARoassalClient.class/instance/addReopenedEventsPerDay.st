adding - datasets - events
addReopenedEventsPerDay
	^ self 
		addDataSetForEventNamed: 'Reopened' 
		recognizedBy: #isReopened 
		color: self colors fourth