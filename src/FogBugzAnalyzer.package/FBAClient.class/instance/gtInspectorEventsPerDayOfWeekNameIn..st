gt-inspector-extension
gtInspectorEventsPerDayOfWeekNameIn: composite
	<gtInspectorPresentationOrder: 2>
	^ composite fastTable
			title: [ 'Events Per Day Of Week' ];
			display: [ self eventsPerDayOfWeekName associations ];
			column: 'Day' evaluated: [ :assoc | assoc key ] width: 70;
			column: 'Total' 
				evaluated: [  :assoc | assoc value size ] 
				width: 55
				tags: {  }
				sortedBy: [ :a :b | a value size > b value size ];
			column: 'Opened' 
				evaluated: [ :assoc | assoc value count: #isOpening ] 
				width: 55
				tags: {  }
				sortedBy: [ :a :b | (a value count: #isOpening) > (b value count: #isOpening) ];
			column: 'Closed' 
				evaluated: [ :assoc | assoc value count: #isClosing ] 
				width: 55
				tags: {  }
				sortedBy: [ :a :b | (a value count: #isClosing) > (b value count: #isClosing) ];
			column: 'Edited' 
				evaluated: [ :assoc | assoc value count: #isEdited ] 
				width: 55
				tags: {  }
				sortedBy: [ :a :b | (a value count: #isEdited) > (b value count: #isEdited) ];
			column: 'Review Needed' 
				evaluated: [ :assoc | assoc value count: #isResolvedFixReviewNeeded ] 
				width: 90
				tags: {  }
				sortedBy: [ :a :b | (a value count: #isResolvedFixReviewNeeded) > (b value count: #isResolvedFixReviewNeeded) ];
			column: 'Resolved' 
				evaluated: [ :assoc | assoc value count: #isResolvedNotFixReviewNeeded ] 
				width: 55
				tags: {  }
				sortedBy: [ :a :b | (a value count: #isResolvedNotFixReviewNeeded) > (b value count: #isResolvedNotFixReviewNeeded) ];
			send: [ :assocOrNil | assocOrNil value ];
			yourself