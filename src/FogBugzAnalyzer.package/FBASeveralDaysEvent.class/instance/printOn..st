printing
printOn: aStream
	aStream << (self name ifNil: [ 'an event' ]) << String space.
	self printDate: self startDate on: aStream.
	aStream << ' - '.
	self printDate: self endDate on: aStream.
	aStream << ' (' << self days << ' days)'.	
	self printInfoOn: aStream.