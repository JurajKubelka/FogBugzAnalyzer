printing
printOn: aStream
	aStream 
		print: self numberOfEvents;
		nextPutAll: ' events in ';
		print: self numberOfCases;
		nextPutAll: ' cases on ';
		print: self event