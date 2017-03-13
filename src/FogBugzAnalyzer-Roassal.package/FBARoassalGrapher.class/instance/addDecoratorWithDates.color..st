adding
addDecoratorWithDates: dates color: aColor
	^ self 
		addDecoratorWithValues: (dates collect: [ :date | (date date - self minDate) days ])
	 	color: aColor