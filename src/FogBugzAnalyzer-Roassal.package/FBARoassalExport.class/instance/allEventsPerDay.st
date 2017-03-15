graphs
allEventsPerDay
	<graphOrder: 1 filename: 'all-events-per-day.png'>
	^ (FBARoassalClient client: self client)
			computeUserEventsOfRealCasesPerDay;
			beStatic;
			addLegend: 'All developer events (actions) per day';
			timelineEventsPerDay.