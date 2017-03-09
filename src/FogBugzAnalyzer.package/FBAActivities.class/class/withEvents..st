instance creation
withEvents: aCollection 
	| instance |
	instance := self new: aCollection size.
	aCollection do: [ :each | 
		instance add: (FBAActivity new event: each) ].
	^ instance