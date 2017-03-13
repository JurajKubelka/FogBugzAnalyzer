tests
testDays5
	event := FBASeveralDaysEvent new 
		startDate: '2017-03-09T23:47:14.446455-03:00' asDateAndTime;
		endDate: '2017-03-013T00:47:14.446455+03:00' asDateAndTime;
		yourself.
	self assert: event days equals: 5.