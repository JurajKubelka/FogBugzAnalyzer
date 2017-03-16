printing
printOverviewOn: aStream
	| all |
	aStream 
		print: self users size;
		nextPutAll: ' users were involved in the following ';
		print: (all := self events size);
		nextPutAll: ' activities:';
		cr.
	self printOverviewOfEvents: self events prefix: '' on: aStream.
	aStream
		cr;
		nextPutAll: 'Users: ';
		cr.
	self users do: [ :user | 
		self printOverviewOfUser: user on: aStream ].
	aStream cr; << 'Timezones:'; cr.
	self printOverviewOfTimezones: self events prefix: '' on: aStream