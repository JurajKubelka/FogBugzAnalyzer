gt-inspector-extension
gtInspectorDevelopersIn: composite 
	<gtInspectorPresentationOrder: 3>
	^ composite fastTable 
		title: [ 'Developers' translated ];
		display: [ (self events groupedBy: #user) associations ];
		column: 'Developer' 
			evaluated: [ :assoc | assoc key username ];
		column: 'Cases/Day' 
			evaluated: [ :assoc | (assoc value numberOfCases  / self days) asFloat round: 1 ]
			width: 70
			tags: { }
			sortedBy: [ :a :b | a value numberOfCases > b value numberOfCases ];
		column: 'Cases' 
			evaluated: [ :assoc | assoc value numberOfCases ]
			width: 50
			tags: { }
			sortedBy: [ :a :b | a value numberOfCases > b value numberOfCases ];
		column: 'Events/Day' 
			evaluated: [ :assoc | (assoc value numberOfEvents / self days) asFloat round: 1 ]
			width: 75
			tags: { }
			sortedBy: [ :a :b | a value numberOfEvents > b value numberOfEvents ];
		column: 'Events' 
			evaluated: [ :assoc | assoc value numberOfEvents ]
			width: 50
			tags: { }
			sortedBy: [ :a :b | a value numberOfEvents > b value numberOfEvents ];
		column: 'Opened' 
			evaluated: [ :assoc | assoc value numberOfOpening ]
			width: 60
			tags: { }
			sortedBy: [ :a :b | a value numberOfOpening > b value numberOfOpening ];
		column: 'Edited' 
			evaluated: [ :assoc | assoc value numberOfEdited ]
			width: 50
			tags: { }
			sortedBy: [ :a :b | a value numberOfEdited > b value numberOfEdited ];
		column: 'Fixes' 
			evaluated: [ :assoc | assoc value numberOfResolvedFixReviewNeededEvents ]
			width: 50
			tags: { }
			sortedBy: [ :a :b | a value numberOfResolvedFixReviewNeededEvents > b value numberOfResolvedFixReviewNeededEvents ];
		column: 'Integrated' 
			evaluated: [ :assoc | assoc value numberOfOtherResolvedEvents ]
			width: 70
			tags: { }
			sortedBy: [ :a :b | a value numberOfOtherResolvedEvents > b value numberOfOtherResolvedEvents ];
		column: 'Closed' 
			evaluated: [ :assoc | assoc value numberOfClosed ]
			width: 50
			tags: { }
			sortedBy: [ :a :b | a value numberOfClosed > b value numberOfClosed ];
		send: [ :selection | 
			selection isNil 
				ifTrue: [ nil ]
				ifFalse:[ selection value ] ];
		yourself.