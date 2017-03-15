building
buildEvents: aCollection title: titleString label: labelString 
	aCollection title: titleString.
	mondrian shape box color: Color transparent; borderColor: self borderColor.
	aCollection ifNotEmpty: [ 
		mondrian node: aCollection forIt: [ 
			mondrian shape label.
			mondrian node: labelString. 
			mondrian shape box color: Color black.
			mondrian interaction 
				highlightElements: [ :event | self highlightElementsRelatedWithEvent: event ] color: self neighbourColor";
				highlightNeighbour: [ :event | Array with: event user with: event case ] 
				color: self colorNeighbour".
			mondrian nodes: aCollection.
			mondrian layout grid.
	] ].
