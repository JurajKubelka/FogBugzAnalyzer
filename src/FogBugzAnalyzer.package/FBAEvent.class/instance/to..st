instance creation
to: aFBAEvent 
	self assert: [ aFBAEvent isKindOf: FBAEvent ].
	self assert: [ self endDate < aFBAEvent startDate ].
	^ FBABetweenTwoEvents new
		startingEvent: self;
		endingEvent: aFBAEvent;
		yourself