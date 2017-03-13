adding - datasets - events
addClosedEventsPerDay
	^ self 
		addDataSetForEventNamed: 'Closed' 
		recognizedBy: #isClosing 
		color: self colors second