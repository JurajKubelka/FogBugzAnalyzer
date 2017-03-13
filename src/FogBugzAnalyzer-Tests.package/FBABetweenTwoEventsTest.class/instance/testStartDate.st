tests
testStartDate
	oneDayEvent1 := FBASeveralDaysEvent new 
		startDate: '2015-01-29T00:00:00-03:00' asDateAndTime;
		endDate: '2015-01-30T00:00:00-03:00' asDateAndTime.
	oneDayEvent2 := FBASeveralDaysEvent new 
		startDate: '2015-02-01T00:00:00-03:00' asDateAndTime;
		endDate: '2015-02-03T00:00:00-03:00' asDateAndTime.
	event := oneDayEvent1 to: oneDayEvent2.
	self assert: event class equals: FBABetweenTwoEvents.
	self assert: event startDate asDate equals: '2015-01-31' asDate
	