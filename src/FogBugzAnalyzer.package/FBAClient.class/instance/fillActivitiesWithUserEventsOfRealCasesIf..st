enumerating
fillActivitiesWithUserEventsOfRealCasesIf: conditionBlock
	| activities events |
	events := FBAEvents events withOtherdays.
	events withStart: self minDateAndTime end: self maxDateAndTime.
	activities := FBAActivities withEvents: events.
	activities title: 'Pharo Sprint, Conference, and Release Activities With Days Around'.
	^ self fillActivities: activities withUserEventsOfRealCasesIf: conditionBlock.