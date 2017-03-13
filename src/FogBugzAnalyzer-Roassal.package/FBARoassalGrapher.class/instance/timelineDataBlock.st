accessing
timelineDataBlock
	^ timelineDataBlock ifNil: [ [ :aColor | self newTimelineDataDotShapeColored: aColor ] ]