graphs
introCasesPerActivity
	<graphOrder: 1 filename: 'intro-cases-per-activity.png'>
	^ (FBARoassalActivities activities: self activitiesWithAllEvents)
			beStatic;
			addImportantDates;
			addImportantDatesOnAxisX;
			timelineDataSelector: #newTimelineDataConnectedDotShapeColored:;
			addIntroCases;
			addLegend;
			configureAxisXAndY: 'Number of Intro Cases During Activity';
			build.
