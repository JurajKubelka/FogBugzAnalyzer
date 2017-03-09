accessing - computed
eventsPerDay
	| dateAndEvents |
	dateAndEvents := Dictionary new.
	self eventsDo: [ :event | | key |
		key := event date asDate.
		dateAndEvents 
			at: key
			ifPresent: [ :events | events add: event ]
			ifAbsent: [ dateAndEvents at: key put: (OrderedCollection with: event) ] ].
	^ dateAndEvents