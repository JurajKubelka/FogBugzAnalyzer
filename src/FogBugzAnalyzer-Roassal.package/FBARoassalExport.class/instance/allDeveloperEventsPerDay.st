graphs
allDeveloperEventsPerDay
	<graphOrder: 1 filename: 'active-developers-per-day.png'>
	^ (FBARoassalClient client: client)
			computeEventsPerDay;
			beStatic;
			addLegend: 'Active developers per day';
			timelineActiveDevelopesPerDay.
