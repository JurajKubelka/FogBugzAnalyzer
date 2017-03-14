building
buildEventsOn: anFBAActivity
	| opened edited fixed resolved closed allEvents allCases |
	mondrian shape box color: Color transparent; borderColor: Color black.
	allEvents := anFBAActivity events.
	allEvents ifEmpty: [ ^ self ].
	allCases := allEvents cases.
	allCases ifNotEmpty: [ 
		mondrian node: allCases forIt: [ 
			mondrian shape label.
			mondrian node: 'Cases'. 
			mondrian shape box color: Color black.
			mondrian nodes: allCases.
			mondrian layout grid. 
	] ].
	mondrian shape box color: Color transparent; borderColor: Color black.
	mondrian node: allEvents forIt: [ 
		mondrian shape box color: Color transparent; borderColor: Color black.
		opened := anFBAActivity openedEvents.
		opened title: 'opening events'.
		opened ifNotEmpty: [ 
			mondrian node: opened forIt: [ 
				mondrian shape label.
				mondrian node: 'Open'. 
				mondrian shape box color: Color black.
				mondrian nodes: opened.
				mondrian layout grid.
		] ].
		mondrian shape box color: Color transparent; borderColor: Color black.
		edited := anFBAActivity editedEvents.
		edited title: 'edited events'.
		edited ifNotEmpty: [ 
			mondrian node: edited forIt: [ 
				mondrian shape label.
				mondrian node: 'Edited'. 
				mondrian shape box color: Color black.
				mondrian nodes: edited.
				mondrian layout grid.
		] ].
		mondrian shape box color: Color transparent; borderColor: Color black.
		fixed := anFBAActivity resolvedFixReviewNeededEvents.
		fixed title: 'fixed events'.
		fixed ifNotEmpty: [ 
			mondrian node: fixed forIt: [ 
				mondrian shape label.
				mondrian node: 'Fixed'.
				mondrian shape box color: Color black.
				mondrian nodes: fixed.
				mondrian layout grid.
		] ].
		mondrian shape box color: Color transparent; borderColor: Color black.
		resolved := anFBAActivity otherResolvedEvents.
		resolved title: 'resolved events'.
		resolved ifNotEmpty: [ 
			mondrian node: resolved forIt: [ 
				mondrian shape label.
				mondrian node: 'Resolved'. 
				mondrian shape box color: Color black.
				mondrian nodes: resolved.
				mondrian layout grid.
		] ].
		mondrian shape box color: Color transparent; borderColor: Color black.
		closed := anFBAActivity closedEvents.
		closed title: 'closed events'.
		closed ifNotEmpty: [ 
			mondrian node: closed forIt: [ 
				mondrian shape label.
				mondrian node: 'Closed'. 
				mondrian shape box color: Color black.
				mondrian nodes: closed.
				mondrian layout grid.
		] ].
		mondrian layout grid.
	].
	^ view