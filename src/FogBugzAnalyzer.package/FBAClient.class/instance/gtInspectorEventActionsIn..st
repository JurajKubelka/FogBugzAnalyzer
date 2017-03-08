gt-inspector-extension
gtInspectorEventActionsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTable
			title: [ 'Event Actions' ];
			display: [ self eventsPerActionName associations ];
			column: 'Occurrences' 
				evaluated: [  :assoc | assoc value size ] 
				width: 80
				tags: {  }
				sortedBy: [ :a :b | a value size > b value size ];
			column: 'Name' evaluated: [ :assoc | assoc key ];
			send: [ :assocOrNil | assocOrNil value ];
			yourself