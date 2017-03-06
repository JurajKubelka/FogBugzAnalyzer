public
splitDates: startDate and: endDate 	
	^ OrderedCollection streamContents: [ :collectionStream | | start end |
			start := startDate.
			end := (start + 30 days) min: endDate.

			[ start < endDate ] whileTrue: [ | queryString |
				queryString := String streamContents: [ :stream | 
					stream nextPutAll: 'opened:"'.
					start printYMDOn: stream.
					stream nextPutAll: '.." opened:"..'.
					end printYMDOn: stream.
					stream nextPut: $" ].
				collectionStream nextPut: queryString.
				start := start + 29 days.
				end := (start + 30 days) min: endDate ] ]