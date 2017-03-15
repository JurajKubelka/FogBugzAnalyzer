graphs
specificEventsPerDay
	<graphOrder: 1 filename: 'specific-events-per-day.png'>
	^ (FBARoassalClient client: client)
			computeUserEventsOfRealCasesPerDay;
			beStatic;
			addLegend: 'Open/Closed/Fixed/Resolved events per day';
			addImportantDates;
			addImportantDatesOnAxisX;
			timelineDataSelector: #newTimelineDataConnectedDotShapeColored:;
			addOpenedEventsPerDay;
			addClosedEventsPerDay;
			"addReactivatedEventsPerDay;"
			"addReopenedEventsPerDay;"
			addResolvedEventsPerDay;
			addResolvedFixReviewNeededEventsPerDay;
			"addAssignedEventsPerDay;"
			"addEditedEventsPerDay;"
			configureAxisXAndYForEvents;
			build.
