adding
addDecoratorWithDates: dates color: aColor
	^ self 
		addDecoratorWithValues: (dates collect: [ :date | (date date - minDate) days ])
	 	color: aColor