public - computing data
computeEventsPerDate
	dateAndEvents := Dictionary new.
	self cases do: [ :case | case events do: [ :event | | key |
		key := event date asDate.
		dateAndEvents 
			at: key
			ifPresent: [ :events | events add: event ]
			ifAbsent: [ dateAndEvents at: key put: (OrderedCollection with: event) ] ] ].
	minDate := dateAndEvents keys min.
