enumerating
fillActivities: aFBAActivities withUserEventsOfRealCasesIf: conditionBlock
	self userEventsOfRealCasesDo: [ :event | 
		(conditionBlock cull: event cull: aFBAActivities cull: self) ifTrue: [ 
			aFBAActivities addFogBugzEvent: event ] ].
	^ aFBAActivities