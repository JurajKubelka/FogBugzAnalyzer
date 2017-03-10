printing
printOn: aStream
	self printDateOn: aStream.
	self info
		ifNotNil: [ :aString | 
			aString ifNotEmpty: [ 
				aStream 
					nextPutAll: ' - ';
					nextPutAll: aString asString ] ]
		ifNil: [ aStream nextPutAll: '-<missing info>' ]