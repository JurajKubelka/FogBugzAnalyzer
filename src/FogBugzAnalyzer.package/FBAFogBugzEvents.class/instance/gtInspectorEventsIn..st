gt-inspector-extension
gtInspectorEventsIn: composite 
	<gtInspectorPresentationOrder: -1>
	^ (FBAInspectorExtensions gtInspectorEventsIn: composite)
			display: [ self ];
			yourself