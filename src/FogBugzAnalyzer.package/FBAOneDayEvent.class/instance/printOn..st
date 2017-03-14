printing
printOn: aStream
	aStream << (self name ifNil: [ 'an event' ]) << String space.
	self printDate: self date on: aStream.
	self printInfoOn: aStream.