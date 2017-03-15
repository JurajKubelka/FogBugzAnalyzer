accessing
activitiesWithAllEvents
	^ activitiesWithAllEvents ifNil: [ activitiesWithAllEvents := self client activitiesWithAllEvents ]