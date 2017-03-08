instance creation
newTimelineDataBarShapeColored: aColor
	| data |
	data := RTData new.
	data barShape
		width: 1;
		color: aColor.
	data x: [ :assoc | (assoc key - minDate) days ].
	data interaction
		fixedPopupText: [ :assoc | 
			assoc value size printString, 'x on ', assoc key printString ].
	^ data