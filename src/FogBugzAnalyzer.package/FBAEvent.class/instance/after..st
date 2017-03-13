instance creation
after: aDateAndTime 
	^ self to: (FBAOneDayEvent new endDate: aDateAndTime + 1 day; info: 'Final boundary'; yourself)