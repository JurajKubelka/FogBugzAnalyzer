accessing
involvedUsers
	"Involved users excluding bots"
	^ self cases flatCollect: [ :case | 
		case events collect: #user thenSelect: [ :user | user isMonkey not ] ] as: Bag.