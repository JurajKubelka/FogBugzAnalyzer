accessing - developers
developerEvents: aFogBugzUser 
	^ self events select: [ :each | each user = aFogBugzUser ]