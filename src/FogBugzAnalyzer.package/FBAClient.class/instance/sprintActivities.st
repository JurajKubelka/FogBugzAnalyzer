accessing - computed
sprintActivities
	| activities |
	activities := FBAActivities withEvents: FBAEvents sprints.
	activities title: 'Pharo Sprint Activities'.
	self eventsDo: [ :event | activities addFogBugzEvent: event ].
	^ activities