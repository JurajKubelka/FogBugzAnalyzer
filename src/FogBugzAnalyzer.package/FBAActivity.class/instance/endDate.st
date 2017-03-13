accessing
endDate
	^ self event ifNotNil: #endDate ifNil: [ DateAndTime epoch ]