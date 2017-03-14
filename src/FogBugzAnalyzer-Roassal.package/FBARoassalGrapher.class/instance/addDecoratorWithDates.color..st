adding
addDecoratorWithDates: events color: aColor
	^ self 
		addDecoratorWithValues: (events collect: [ :event | (event midDate - self minDate) days ])
	 	color: aColor