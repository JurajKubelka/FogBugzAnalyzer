accessing
date
	^ self event ifNotNil: #date ifNil: [ DateAndTime epoch ]