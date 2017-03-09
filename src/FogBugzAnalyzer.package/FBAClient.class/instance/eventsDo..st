enumerating
eventsDo: aBlock
	"Iterate only real cases and events not created by Monkey."
	self allCases do: [ :case | 
		case isIntroCase ifFalse: [ 
			case case events do: [ :event | 
				event isCreatedByMonkey ifFalse: [ aBlock value: event ] ] ] ].