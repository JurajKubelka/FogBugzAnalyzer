instance creation
after: aDateAndTime 
	^ self to: (self class new date: aDateAndTime + 1; info: 'Final boundary'; yourself)