building
buildEventsOn: anFBAActivity
	| allEvents |
	mondrian shape box color: Color transparent; borderColor: self borderColor.
	allEvents := anFBAActivity events.
	allEvents ifEmpty: [ ^ self ].
	self buildCases: allEvents cases title: 'cases' label: 'cases'.
	mondrian shape box color: Color transparent; borderColor: self borderColor.
	mondrian node: allEvents forIt: [ 
		self buildEvents: anFBAActivity openedEvents title: 'opening events' label: 'open'.
		self buildEvents: anFBAActivity editedEvents title: 'edited events' label: 'edited'.
		self buildEvents: anFBAActivity resolvedFixReviewNeededEvents title: 'fixed events' label: 'fixed'.
		self buildEvents: anFBAActivity otherResolvedEvents title: 'resolved events' label: 'resolved'.
		self buildEvents: anFBAActivity closedEvents title: 'closed events' label: 'closed'.
		mondrian layout grid.
	].
	^ view