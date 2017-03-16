accessing - users
eventsOfUser: aFogBugzUser 
	^ self events select: [ :each | each user = aFogBugzUser ]