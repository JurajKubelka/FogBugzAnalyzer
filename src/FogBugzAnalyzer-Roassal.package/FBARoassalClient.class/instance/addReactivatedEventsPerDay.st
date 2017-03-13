adding - datasets - events
addReactivatedEventsPerDay
	^ self 
		addDataSetForEventNamed: 'Reactivated' 
		recognizedBy: #isReactivated 
		color: self colors third