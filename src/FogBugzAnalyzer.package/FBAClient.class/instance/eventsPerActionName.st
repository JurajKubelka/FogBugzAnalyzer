accessing - computed
eventsPerActionName
	| dictionary |
	dictionary := Dictionary new.
	self cases do: [ :case | 
		case case events do: [ :event |
			dictionary 
				at: event actionName 
				ifPresent: [ :collection | collection add: event ]
				ifAbsentPut: [ OrderedCollection with: event ] ] ].
	^ dictionary