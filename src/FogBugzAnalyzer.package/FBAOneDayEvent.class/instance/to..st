instance creation
to: aFBAOneDayEvent 
	self assert: [ aFBAOneDayEvent class = self class ].
	self assert: [ self date < aFBAOneDayEvent date ].
	^ FBABetweenTwoEvents new
		startingEvent: self;
		endingEvent: aFBAOneDayEvent;
		yourself