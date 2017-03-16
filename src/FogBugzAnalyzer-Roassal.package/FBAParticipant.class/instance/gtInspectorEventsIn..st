gt-inspector-extension
gtInspectorEventsIn: composite 
	<gtInspectorPresentationOrder: 2>
	^ (FBAInspectorExtensions gtInspectorEventsIn: composite)
			display: [ self events ];
			yourself