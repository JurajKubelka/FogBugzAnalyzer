printing
printDate: aDateAndTime on: aStream
	aDateAndTime 
		ifNotNil: [ :instance | instance printYMDOn: aStream ]
		ifNil: [ aStream nextPutAll: '<missing date>' ].