accessing
midDate
	^ self event ifNotNil: #midDate ifNil: [ DateAndTime epoch ]