accessing - computed
eventsPerActionName
	| dictionary |
	dictionary := Dictionary new.
	self userEventsOfRealCasesDo: [ :event |
			dictionary 
				at: event actionName 
				ifPresent: [ :collection | collection add: event ]
				ifAbsentPut: [ OrderedCollection with: event ] ].
	^ dictionary