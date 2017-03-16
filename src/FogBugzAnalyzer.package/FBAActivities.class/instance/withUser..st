accessing - users
withUser: aFogBugzUser 
	^ self select: [ :activity | activity includesUser: aFogBugzUser ]