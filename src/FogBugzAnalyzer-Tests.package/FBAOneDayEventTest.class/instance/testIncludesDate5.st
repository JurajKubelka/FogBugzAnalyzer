tests
testIncludesDate5
	event := FBAOneDayEvent new date: '2017-03-09T15:47:14.446455-03:00' asDateAndTime.
	self assert: (event includesDate: '2017-03-09T23:47:14.446455-03:00' asDateAndTime)