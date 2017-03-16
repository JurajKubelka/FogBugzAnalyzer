graphs
sprintAndReleaseBluePrint
	<graphOrder: 1 filename: 'sprint-release-blueprint.png'>
	^ (FBASprintBlueprint activities: self activitiesWithAllEvents)
			buildSuch: [ :activity | activity isSprint or: [ activity isRelease ] ].
	