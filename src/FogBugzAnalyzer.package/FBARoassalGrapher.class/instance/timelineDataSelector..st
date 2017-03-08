accessing
timelineDataSelector: aSelector
	timelineDataBlock := [ :aColor | self perform: aSelector with: aColor ]