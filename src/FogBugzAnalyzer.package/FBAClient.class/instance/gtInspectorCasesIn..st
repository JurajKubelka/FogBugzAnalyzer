gt-inspector-extension
gtInspectorCasesIn: composite
	<gtInspectorPresentationOrder: 0>
	^ composite with: [ :aComposite | 
		fogbugz 
			ifNotNil: [ :aFogBugz | aFogBugz gtInspectorCasesIn: composite ]
			ifNil: [ composite ] ]