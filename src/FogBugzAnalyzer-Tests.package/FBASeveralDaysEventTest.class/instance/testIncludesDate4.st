tests
testIncludesDate4
	event := FBASeveralDaysEvent new 
		startDate: '2017-03-09T15:47:14.446455-00:00' asDateAndTime;
		endDate: '2017-03-011T15:47:14.446455-00:00' asDateAndTime;
		yourself.
	self assert: (event includesDate: '2017-03-10T00:47:14.446455+03:00' asDateAndTime)
	