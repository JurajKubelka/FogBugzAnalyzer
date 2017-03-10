printing
printOverviewOn: aStream
	| all |
	aStream 
		print: self developers size;
		nextPutAll: ' developers were involved the following ';
		print: (all := self events size);
		nextPutAll: ' activities:';
		cr.
	self printOverviewOfEvents: self events prefix: '' on: aStream.
	aStream
		cr;
		nextPutAll: 'Developers: ';
		cr.
	self developers do: [ :developer | 
		self printOverviewOfDeveloper: developer on: aStream ].
	aStream cr; << 'Timezones:'; cr.
	self printOverviewOfTimezones: self events prefix: '' on: aStream