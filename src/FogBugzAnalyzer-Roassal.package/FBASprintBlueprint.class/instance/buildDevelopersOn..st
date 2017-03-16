building
buildDevelopersOn: anFBAActivity
	| users participants occasionalUsers occasionalParticipants regularUsers regularParticipants 
	newcommers newcommersParticipants |
	mondrian shape box color: Color transparent; borderColor: self borderColor.
	users := anFBAActivity realUsers.
	users ifEmpty: [ ^ self ].
	participants := users asParticipansIn: anFBAActivity.
	mondrian node: participants forIt: [ 
		regularUsers := self activities 
				regularUsers: users for: anFBAActivity.
		regularParticipants := regularUsers asParticipansIn: anFBAActivity.
		self buildDevelopers: regularParticipants title: 'regular users' label: 'Regular'.
		occasionalUsers := self activities 
				occassionalUsers: users for: anFBAActivity.
		occasionalParticipants := occasionalUsers asParticipansIn: anFBAActivity.
		self buildDevelopers: occasionalParticipants title: 'occasional users' label: 'Occasional'.
		newcommers := anFBAActivity newcommers.
		newcommersParticipants := newcommers asParticipansIn: anFBAActivity.
		self buildDevelopers: newcommersParticipants title: 'newcommers' label: 'Newcommers'.
		mondrian layout horizontalLine.
	].
	^ view