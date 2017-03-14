enumerating
userEventsOfRealCasesDo: aBlock
	"Iterate only real cases and events not created by Monkey."
	self cases do: [ :case | 
		case isIntroCase ifFalse: [ 
			case case events do: [ :event | 
				event isCreatedByBot ifFalse: [ aBlock value: event ] ] ] ].