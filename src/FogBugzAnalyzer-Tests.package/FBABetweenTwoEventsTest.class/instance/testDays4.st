tests
testDays4
	oneDayEvent1 := FBAOneDayEvent new date: '2017-03-09T23:47:14.446455-03:00' asDateAndTime.
	oneDayEvent2 := FBAOneDayEvent new date: '2017-03-012T00:47:14.446455+03:00' asDateAndTime.
	event := oneDayEvent1 to: oneDayEvent2.
	self assert: event days equals: 2
	