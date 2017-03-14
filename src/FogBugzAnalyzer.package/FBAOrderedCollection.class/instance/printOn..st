printing
printOn: aStream
	aStream << self size << String space.
	self title 
		ifNotNil: [ aStream << self title ] 
		ifNil: [ aStream << self defaultTitle ]