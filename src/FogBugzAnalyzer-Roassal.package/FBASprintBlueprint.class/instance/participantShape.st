configuration - shapes
participantShape
	^ participantShape ifNil: [ participantShape := mondrian createShapeBuilder ]