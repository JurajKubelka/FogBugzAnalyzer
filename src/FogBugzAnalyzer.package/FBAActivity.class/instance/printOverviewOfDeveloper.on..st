printing
printOverviewOfDeveloper: developer on: aStream
	| developerEvents a b c d e |
	developerEvents := self developerEvents: developer.
	aStream 
		nextPutAll: ' - '; 
		nextPutAll: developer username;
		nextPutAll: ' in ';
		print: (developerEvents collect: #case as: Set) size;
		nextPutAll: ' cases';
		cr.
	self 
		printPrefix: '   - opened events: ' 
		number: (a := developerEvents openedEvents size)
		on: aStream;
		printPrefix: '   - edited events: ' 
		number: (b := developerEvents editedEvents size)
		on: aStream;
		printPrefix: '   - resolved (fix review needed) events: ' 
		number: (c := developerEvents resolvedFixReviewNeededEvents size)
		on: aStream;
		printPrefix: '   - other resolved events: ' 
		number: (d := developerEvents otherResolvedEvents size)
		on: aStream;
		printPrefix: '   - closed events: ' 
		number: (e := developerEvents closedEvents size)
		on: aStream;
		printPrefix: '   - other events: ' 
		number: (developerEvents size - a - b - c - d - e)
		on: aStream.