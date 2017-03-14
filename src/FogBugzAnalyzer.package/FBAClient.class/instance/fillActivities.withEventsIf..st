enumerating
fillActivities: aFBAActivities withEventsIf: conditionBlock
	self eventsDo: [ :event | 
		(conditionBlock cull: event cull: aFBAActivities cull: self) ifTrue: [ 
			aFBAActivities addFogBugzEvent: event ] ].
	^ aFBAActivities