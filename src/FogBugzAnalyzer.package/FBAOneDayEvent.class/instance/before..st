instance creation
before: aDateAndTime 
	^ (self class new date: aDateAndTime - 1 day; info: 'Initial boundary'; yourself) to: self.