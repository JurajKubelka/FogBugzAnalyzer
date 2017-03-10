printing
printDateOn: aStream
	self date 
		ifNotNil: [ :aDateAndTime | aDateAndTime printYMDOn: aStream ]
		ifNil: [ aStream nextPutAll: '<missing date>' ].
