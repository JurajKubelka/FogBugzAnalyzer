accessing - computed
minDate
	^ minDate ifNil: [ minDate := self activities minDateAndTime ]