gt-inspector-extension
gtInspectorEventsIn: composite 
	<gtInspectorPresentationOrder: -1>
	^ composite fastTable 
		title: [ 'Events' translated ];
		display: [ self ];
		when: [ self notEmpty ];
		column: 'Date' 
			evaluated: [ :anEvent | anEvent date asStringLocalYMDHMFogBugz ] 
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