accessing - computed
eventsPerActionName
	| dictionary |
	dictionary := Dictionary new.
	self eventsDo: [ :event |
			dictionary 
				at: event actionName 
				ifPresent: [ :collection | collection add: event ]
				ifAbsentPut: [ OrderedCollection with: event ] ].
	^ dictionary