tests
testIncludesDate2
	event := FBAOneDayEvent new date: '2017-03-09T15:47:14.446455-03:00' asDateAndTime.
	self deny: (event includesDate: '2017-03-08T12:47:14.446455-03:00' asDateAndTime)