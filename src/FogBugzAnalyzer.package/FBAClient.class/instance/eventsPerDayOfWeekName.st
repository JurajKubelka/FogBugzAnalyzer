accessing - computed
eventsPerDayOfWeekName
	^ self cacheAt: #eventsPerDayOfWeekName ifAbsentPut: [ | dateAndEvents |
		dateAndEvents := Dictionary new.
		self eventsDo: [ :event | | key |
			key := event date dayOfWeekName.
			dateAndEvents 
				at: key
				ifPresent: [ :events | events add: event ]
				ifAbsent: [ dateAndEvents at: key put: (OrderedCollection with: event) ] ].
		dateAndEvents ]