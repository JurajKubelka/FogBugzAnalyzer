accessing - activities
activitiesWithAllEvents
	| activities events |
	events := FBAEvents events withOtherdays.
	events withStart: self minDateAndTime end: self maxDateAndTime.
	activities := FBAActivities withEvents: events.
	activities title: 'All Activities With Days Around'.
	self eventsDo: [ :event | activities addFogBugzEvent: event ].
	^ activities