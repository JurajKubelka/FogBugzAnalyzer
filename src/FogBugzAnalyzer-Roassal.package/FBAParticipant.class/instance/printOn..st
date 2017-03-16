printing
printOn: aStream
	aStream 
		<< 'Participant ' 
		<< (self user ifNotNil: #username ifNil: '<nil>')