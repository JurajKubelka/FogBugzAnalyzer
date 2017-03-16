printing
printOverviewOfUser: developer on: aStream
	| developerEvents |
	developerEvents := self eventsOfUser: developer.
	aStream 
		nextPutAll: ' - '; 
		nextPutAll: developer username;
		nextPutAll: ' in ';
		print: (developerEvents collect: #case as: Set) size;
		nextPutAll: ' cases';
		cr.
	self printOverviewOfEvents: developerEvents prefix: '   ' on: aStream.