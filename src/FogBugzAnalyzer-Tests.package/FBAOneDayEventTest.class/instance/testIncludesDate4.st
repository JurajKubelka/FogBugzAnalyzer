tests
testIncludesDate4
	event := FBAOneDayEvent new date: '2017-03-09T00:47:14.446455-00:00' asDateAndTime.
	self assert: (event includesDate: '2017-03-09T12:47:14.446455-00:00' asDateAndTime)