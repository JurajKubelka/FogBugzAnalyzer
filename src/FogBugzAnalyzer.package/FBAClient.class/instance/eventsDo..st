enumerating
eventsDo: aBlock
	"Iterate all cases and events not created by Bot."
	self cases do: [ :case | 
			case case events do: [ :event | 
				event isCreatedByBot ifFalse: [ aBlock value: event ] ] ].