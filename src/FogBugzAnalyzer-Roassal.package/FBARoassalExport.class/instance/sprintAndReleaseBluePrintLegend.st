graphs
sprintAndReleaseBluePrintLegend
	<graphOrder: 1 filename: 'sprint-release-blueprint-legend.png'>
	^ (FBASprintBlueprint activities: self activitiesWithAllEvents)
			buildLegend