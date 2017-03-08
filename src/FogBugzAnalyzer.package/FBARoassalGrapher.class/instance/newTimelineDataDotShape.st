instance creation
newTimelineDataDotShape
	| data |
	data := RTData new.
	data dotShape color: self dotColor.
	data x: [ :assoc | (assoc key - minDate) days ].
	data interaction
		fixedPopupText: [ :assoc | 
			assoc value size printString, 'x on ', assoc key printString ].
	^ data