accessing - users
newcommers
	| usernames |
	usernames := self introCases collect: [ :case | 
		case title last: case title size - ('Intro Case for ' size).
	] as: OrderedCollection.
	^ self users select: [ :user | usernames includes: user username ]