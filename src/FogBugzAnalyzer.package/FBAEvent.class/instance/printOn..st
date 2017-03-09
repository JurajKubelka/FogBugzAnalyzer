printing
printOn: aStream
	self date 
		ifNotNil: [ :aDateAndTime | aDateAndTime printYMDOn: aStream ]
		ifNil: [ aStream nextPutAll: '<missing date>' ].
	self info
		ifNotNil: [ :aString | 
			aString ifNotEmpty: [ 
				aStream 
					nextPutAll: ' - ';
					nextPutAll: aString asString ] ]
		ifNil: [ aStream nextPutAll: '-<missing info>' ]