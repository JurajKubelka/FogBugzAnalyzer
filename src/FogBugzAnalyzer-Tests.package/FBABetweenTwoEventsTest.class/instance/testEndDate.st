tests
testEndDate
	oneDayEvent1 := FBASeveralDaysEvent new 
		startDate: '2015-01-29T00:00:00-03:00' asDateAndTime;
		endDate: '2015-01-30T00:00:00-03:00' asDateAndTime.
	oneDayEvent2 := FBASeveralDaysEvent new 
		startDate: '2015-02-02T00:00:00-03:00' asDateAndTime;
		endDate: '2015-02-04T00:00:00-03:00' asDateAndTime.
	event := oneDayEvent1 to: oneDayEvent2.
	self assert: event class equals: FBABetweenTwoEvents.
	self assert: event endDate asDate equals: '2015-02-01' asDate
	