tests
testDays
	oneDayEvent1 := FBAOneDayEvent new date: '2017-03-09T15:47:14.446455-03:00' asDateAndTime.
	oneDayEvent2 := FBAOneDayEvent new date: '2017-03-011T15:47:14.446455-03:00' asDateAndTime.
	event := oneDayEvent1 to: oneDayEvent2.
	self assert: event days equals: 1
	