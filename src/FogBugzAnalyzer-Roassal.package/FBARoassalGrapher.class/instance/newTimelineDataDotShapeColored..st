instance creation
newTimelineDataDotShapeColored: aColor
	| data |
	data := RTData new.
	data dotShape color: aColor.
	data x: [ :assoc | (assoc key - self minDate) days ].
	data interaction
		fixedPopupText: self popupTextBlock.
	^ data