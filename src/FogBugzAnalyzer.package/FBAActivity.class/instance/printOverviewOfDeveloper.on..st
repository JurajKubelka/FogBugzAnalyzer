printing
printOverviewOfDeveloper: developer on: aStream
	| developerEvents |
	developerEvents := self developerEvents: developer.
	aStream 
		nextPutAll: ' - '; 
		nextPutAll: developer username;
		nextPutAll: ' in ';
		print: (developerEvents collect: #case as: Set) size;
		nextPutAll: ' cases';
		cr.
	self printOverviewOfEvents: developerEvents prefix: '   ' on: aStream.