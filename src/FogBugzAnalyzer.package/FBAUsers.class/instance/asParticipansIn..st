converting
asParticipansIn: aFBAActivity 
	^ self collect: [ :user | FBAParticipant new user: user; activity: aFBAActivity ] as: FBAParticipants