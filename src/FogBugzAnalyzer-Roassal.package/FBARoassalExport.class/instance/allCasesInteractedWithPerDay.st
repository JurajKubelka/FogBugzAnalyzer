graphs
allCasesInteractedWithPerDay
	<graphOrder: 1 filename: 'all-cases-interacted-per-day.png'>
	^ (FBARoassalClient client: self client)
		computeUserEventsOfRealCasesPerDay;
		beStatic;
		addLegend: 'All Cases Interacted With Per Day';
		timelineCasesInteractedWithPerDay.
