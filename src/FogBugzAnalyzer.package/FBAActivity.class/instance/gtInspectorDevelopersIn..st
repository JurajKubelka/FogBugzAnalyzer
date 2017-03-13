gt-inspector-extension
gtInspectorDevelopersIn: composite 
	<gtInspectorPresentationOrder: 3>
	^ composite fastTable 
		title: [ 'Developers' translated ];
		display: [ (self events groupedBy: #user) associations ];
		column: 'Developer' 
			evaluated: [ :assoc | assoc key username ];
		column: 'Events' 
			evaluated: [ :assoc | assoc value size ]
			width: 50
			tags: { }
			sortedBy: [ :a :b | a value size > b value size ];
		column: 'Cases' 
			evaluated: [ :assoc | assoc value numberOfCases ]
			width: 50
			tags: { }
			sortedBy: [ :a :b | a value numberOfCases > b value numberOfCases ];
		send: [ :selection | 
			selection isNil 
				ifTrue: [ nil ]
				ifFalse:[ selection value ] ];
		yourself.