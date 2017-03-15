graphs
eventTypesPerDay
	<graphOrder: 1 filename: 'event-types-per-day.png'>
	^ (FBARoassalClient client: self client)
			computeUserEventsOfRealCasesPerDay;
			beStatic;
			addLegend: 'Number of event (action) types per day';
			timelineEventActionsPerDay.
