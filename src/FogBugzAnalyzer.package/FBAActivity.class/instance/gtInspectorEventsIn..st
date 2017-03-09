gt-inspector-extension
gtInspectorEventsIn: composite 
	<gtInspectorPresentationOrder: 2>
	^ composite fastTable 
		title: [ 'Events' translated ];
		display: [ self events ];
		when: [ self events notNil ];
		column: 'Date' 
			evaluated: [ :anEvent | anEvent date asStringYMDHM ] 
			width: 100
			tags: { }
			sortedBy: [ :a :b | a date < b date ];
		column: 'Action' 
			evaluated: [ :anEvent | anEvent actionShortName ] 
			width: 70;
		column: 'User' 
			evaluated: [ :anEvent | anEvent username substrings first ] 
			width: 60;
		column: 'Description'
			evaluated: [ :anEvent | anEvent description ];
		yourself.