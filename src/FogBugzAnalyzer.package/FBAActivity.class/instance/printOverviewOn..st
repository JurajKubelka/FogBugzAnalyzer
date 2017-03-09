printing
printOverviewOn: aStream
	| all a b c d e |
	aStream 
		print: self developers size;
		nextPutAll: ' developers were involved the following ';
		print: (all := self events size);
		nextPutAll: ' activities:';
		cr;
		nextPutAll: ' - opened events: ';
		print: (a := self openedEvents size);
		cr;
		nextPutAll: ' - edited events: ';
		print: (b := self editedEvents size);
		cr;
		nextPutAll: ' - resolved (fix review needed) events: ';
		print: (c := self resolvedFixReviewNeededEvents size);
		cr;
		nextPutAll: ' - other resolved events: ';
		print: (d := self otherResolvedEvents size);
		cr;
		nextPutAll: ' - closed events: ';
		print: (e := self closedEvents size);
		cr;
		nextPutAll: ' - other events: ';
		print: all - a - b - c - d - e;
		cr; 
		cr;
		nextPutAll: 'Developers: ';
		cr.
	self developers do: [ :developer | 
		self printOverviewOfDeveloper: developer on: aStream ]
