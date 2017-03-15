graphs
sprintAndReleaseBluePrint
	<graphOrder: 1 filename: 'sprint-release-blueprint.png'>
	^ (FBASprintBlueprint activities: self activitiesWithUserEventsOfRealCases)
			buildSuch: [ :activity | activity isSprint or: [ activity isRelease ] ].
	