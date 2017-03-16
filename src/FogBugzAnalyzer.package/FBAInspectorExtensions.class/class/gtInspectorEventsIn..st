gt-inspector-extension
gtInspectorEventsIn: composite 
	^ (FogBugzInspectorExtensions gtInspectorEventsIn: composite)
			column: 'Case' 
				evaluated: [ :anEvent | anEvent case id ] 
				width: 40
				tags: { }
				sortedBy: [ :a :b | a case id < b case id ];
			yourself