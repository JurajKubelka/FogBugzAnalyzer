graphs
eventTypesPerDay
	<graphOrder: 1 filename: 'event-types-per-day.png'>
	^ (FBARoassalClient client: client)
			computeEventsPerDay;
			beStatic;
			addLegend: 'Number of event (action) types per day';
			timelineEventActionsPerDay.
