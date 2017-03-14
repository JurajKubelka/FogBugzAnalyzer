instance creation
newInstance: aReadStream 
	^ self new
		name: aReadStream next;
		date: aReadStream next asDateAndTime;
		info: aReadStream next;
		yourself