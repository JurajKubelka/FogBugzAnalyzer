printing
printOverviewOfEvents: collectionOfEvents prefix: prefixString on: aStream
	| a b c d e |
	self 
		printPrefix: prefixString asString, ' - opened events: ' 
		number: (a := collectionOfEvents openedEvents size)
		on: aStream;
		printPrefix: prefixString asString, ' - edited events: ' 
		number: (b := collectionOfEvents editedEvents size)
		on: aStream;
		printPrefix: prefixString asString, ' - resolved (fix review needed) events: ' 
		number: (c := collectionOfEvents resolvedFixReviewNeededEvents size)
		on: aStream;
		printPrefix: prefixString asString, ' - other resolved events: ' 
		number: (d := collectionOfEvents otherResolvedEvents size)
		on: aStream;
		printPrefix: prefixString asString, ' - closed events: ' 
		number: (e := collectionOfEvents closedEvents size)
		on: aStream;
		printPrefix: prefixString asString, ' - other events: ' 
		number: (collectionOfEvents size - a - b - c - d - e)
		on: aStream.