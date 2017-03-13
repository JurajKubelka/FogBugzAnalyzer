adding - datasets - events
addAssignedEventsPerDay
	^ self 
		addDataSetForEventNamed: 'Assigned'
		recognizedBy: #isAssigned
		color: self colors eighth