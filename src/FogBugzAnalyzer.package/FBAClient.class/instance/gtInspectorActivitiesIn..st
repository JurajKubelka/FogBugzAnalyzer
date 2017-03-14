gt-inspector-extension
gtInspectorActivitiesIn: composite
	<gtInspectorPresentationOrder: 1> 
	(FBAInspectorExtensions gtInspectorActivitiesIn: composite)
		display: [ self eventActivitiesWithInBetweenDays asOrderedCollection ];
		yourself 