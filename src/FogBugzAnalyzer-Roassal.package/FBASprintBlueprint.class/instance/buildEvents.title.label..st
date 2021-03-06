building
buildEvents: aCollection title: titleString label: labelString 
	aCollection title: titleString.
	mondrian shape box color: Color transparent; borderColor: self borderColor.
	aCollection ifNotEmpty: [ 
		mondrian node: aCollection forIt: [ 
			mondrian shape label.
			mondrian node: labelString. 
			self configureEventShape.
			mondrian interaction 
				highlightNeighbors: [ :event | self highlightElementsRelatedWithEvent: event ] 
				color: self neighbourColor.
			mondrian interaction showEdge connectTo: [ :event | self highlightElementsRelatedWithEvent: event ].
			mondrian nodes: aCollection.
			mondrian layout grid.
	] ].
