instance creation
newInstance: aReadStream 
	^ self new
		date: aReadStream next asDateAndTime;
		info: aReadStream next;
		yourself