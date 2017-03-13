adding - datasets - events
addOpenedEventsPerDay
	^ self 
		addDataSetForEventNamed: 'Opened' 
		recognizedBy: #isOpening 
		color: self colors first