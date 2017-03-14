graphs
developersPerActivity
	<graphOrder: 1 filename: 'developers-per-activity.png'>
	^ (FBARoassalActivities activities: activities)
			beStatic;
			addImportantDates;
			addImportantDatesOnAxisX;
			timelineDataSelector: #newTimelineDataConnectedDotShapeColored:;
			addActiveDevelopers;
			addLegend;
			configureAxisXAndY: 'Number of Developers per Activity';
			build.
