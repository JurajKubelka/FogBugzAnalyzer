graphs
developersPerActivity
	<graphOrder: 1 filename: 'developers-per-activity.png'>
	^ (FBARoassalActivities activities: self activitiesWithUserEventsOfRealCases)
			beStatic;
			addImportantDates;
			addImportantDatesOnAxisX;
			timelineDataSelector: #newTimelineDataConnectedDotShapeColored:;
			addActiveUsers;
			addLegend;
			configureAxisXAndY: 'Number of Developers per Activity';
			build.
