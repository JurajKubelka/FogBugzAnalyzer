gt-inspector-extension
gtInspectorActivitiesIn: composite
	<gtInspectorPresentationOrder: 1> 
	^ (composite fastTable)
		title: [ 'Activities' ];
		useCache;
		display: [ self asOrderedCollection ];
		beMultiple;	
		column: 'Date' 
			evaluated: [ :event | self highlight: event startDate asDate yyyymmdd ofEvent: event ]  
			width: 80 tags: { } 
			sortedBy: [ :a :b | a startDate < b startDate ];
		column: 'Events' 
			evaluated: [ :event | event numberOfEvents ]  
			width: 50 tags: { } 
			sortedBy: [ :a :b | a numberOfEvents < b numberOfEvents ];
		column: 'Cases' 
			evaluated: [ :event | event numberOfCases ]  
			width: 50 tags: { } 
			sortedBy: [ :a :b | a numberOfCases < b numberOfCases ];
		column: 'Developers' 
			evaluated: [ :event | event numberfOfDevelopers ]  
			width: 80 tags: { } 
			sortedBy: [ :a :b | a numberfOfDevelopers < b numberfOfDevelopers ];
		column: 'Info' 
			evaluated: [ :event | event info ]  
			width: 50 tags: { } 
			sortedBy: [ :a :b | a info < b info ];
		sendOneOrMultipleAs: self class;
		installExportToCSV
