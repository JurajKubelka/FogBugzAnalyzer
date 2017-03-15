accessing - activities
sprintActivities
	| activities |
	activities := FBAActivities withEvents: FBAEvents sprints.
	activities title: 'Pharo Sprint Activities'.
	self userEventsOfRealCasesDo: [ :event | activities addFogBugzEvent: event ].
	^ activities