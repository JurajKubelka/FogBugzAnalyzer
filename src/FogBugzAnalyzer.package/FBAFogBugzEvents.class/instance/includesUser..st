testing
includesUser: aFogBugzUser 
	^ self anySatisfy: [ :event | event user = aFogBugzUser ]