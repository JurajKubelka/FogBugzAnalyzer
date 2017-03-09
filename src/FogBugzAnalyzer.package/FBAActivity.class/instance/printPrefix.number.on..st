printing
printPrefix: aString number: anInteger on: aStream 
	anInteger isZero ifTrue: [ ^ anInteger ].
	aStream
		nextPutAll: aString;
		print: anInteger;
		cr