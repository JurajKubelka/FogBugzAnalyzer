instance creation
newInstance: aReadStream 
	^ self new
		startDate: aReadStream next asDateAndTime;
		endDate: aReadStream next asDateAndTime;
		info: aReadStream next;
		yourself