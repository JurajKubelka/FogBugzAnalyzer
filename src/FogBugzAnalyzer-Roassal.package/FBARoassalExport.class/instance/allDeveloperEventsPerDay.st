graphs
allDeveloperEventsPerDay
	<graphOrder: 1 filename: 'active-developers-per-day.png'>
	^ (FBARoassalClient client: self client)
			computeUserEventsOfRealCasesPerDay;
			beStatic;
			addLegend: 'Active developers per day';
			timelineActiveDevelopesPerDay.
