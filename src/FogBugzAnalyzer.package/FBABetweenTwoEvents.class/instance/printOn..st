printing
printOn: aStream
	self startingEvent 
		ifNotNil: [ :event | self printDate: self startingDate on: aStream ]
		ifNil: [ aStream << '<undefined start>' ].
	aStream << ' - '.
	self endingEvent 
		ifNotNil: [ :event | self printDate: self endingDate on: aStream ]
		ifNil: [ aStream << '<undefined end>' ].
	(self startingEvent notNil and: [ self endingEvent notNil ])
		ifTrue: [ 
			aStream << ' (' << (self days) << ' days)' ]