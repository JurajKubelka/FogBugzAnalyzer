instance creation
newTimelineDataConnectedDotShapeColored: aColor
	| data |
	data := RTData new.
	data dotShape color: aColor.
	data connectColor: aColor.
	data x: [ :assoc | (assoc key - minDate) days ].
	data interaction
		fixedPopupText: [ :fromToAssoc | 
			| from to |
			from := fromToAssoc key.
			to := fromToAssoc value.
			from value size printString, 'x on ', from key printString, ' and ', String cr,
			to value size printString , 'x on ', to key printString ].
	^ data