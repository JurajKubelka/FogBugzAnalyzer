instance creation
newInstance: aReadStream 
	^ self new
		name: aReadStream next;
		startDate: aReadStream next asDateAndTime;
		endDate: aReadStream next asDateAndTime;
		info: aReadStream next;
		yourself