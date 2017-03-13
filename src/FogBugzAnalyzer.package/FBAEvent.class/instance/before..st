instance creation
before: aDateAndTime 
	^ (FBAOneDayEvent new startDate: aDateAndTime - 1 day; info: 'Initial boundary'; yourself) to: self.