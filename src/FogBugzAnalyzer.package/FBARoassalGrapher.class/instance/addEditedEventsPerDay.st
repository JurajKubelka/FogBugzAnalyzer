adding - datasets - events
addEditedEventsPerDay
	^ self 
		addDataSetForEventNamed: 'Edited'
		recognizedBy: #isEdited 
		color: self colors seventh