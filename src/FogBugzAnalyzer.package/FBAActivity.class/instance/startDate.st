accessing
startDate
	^ self event ifNotNil: #startDate ifNil: [ DateAndTime epoch ]