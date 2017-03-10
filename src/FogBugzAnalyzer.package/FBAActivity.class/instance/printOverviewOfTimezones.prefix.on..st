printing
printOverviewOfTimezones: collectionOfEvents prefix: prefixString on: aStream
	collectionOfEvents timezones do: [ :timezone | 
		aStream 
			<< prefixString;
			<< ' - ';
			<< timezone ]