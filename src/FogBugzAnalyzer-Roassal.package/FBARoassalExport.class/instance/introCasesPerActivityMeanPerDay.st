graphs
introCasesPerActivityMeanPerDay
	<graphOrder: 1 filename: 'intro-cases-per-activity-mean.png'>
	^ (FBARoassalActivities activities: self activitiesWithAllEvents)
			beStatic;
			addImportantDates;
			addImportantDatesOnAxisX;
			timelineDataSelector: #newTimelineDataConnectedDotShapeColored:;
			addIntroCasesMeanPerDay;
			configureAxisXAndY: 'Number of Introduction Cases During Activity';
			addLegend;
			build.