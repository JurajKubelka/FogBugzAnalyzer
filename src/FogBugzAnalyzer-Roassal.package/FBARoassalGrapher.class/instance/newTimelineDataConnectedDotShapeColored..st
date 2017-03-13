instance creation
newTimelineDataConnectedDotShapeColored: aColor
	| data |
	data := RTData new.
	data dotShape color: aColor.
	data connectColor: aColor.
	data x: [ :assoc | (assoc key - minDate) days ].
	self setPopupTextBlockForConnectedGraph.
	data interaction fixedPopupText: self popupTextBlock.
	^ data