building
buildDevelopers: aCollection title: titleString label: labelString
	mondrian shape box color: Color transparent; borderColor: self borderColor.
	aCollection title: titleString.
	aCollection ifNotEmpty: [ 
		mondrian node: aCollection forIt: [ 
			mondrian shape label.
			mondrian node: labelString.
			mondrian shape box color: Color black.
			mondrian interaction 
				highlightNeighbour: [ :developer | self 
					highlightElementsRelatedWithDeveloper: developer ] 
				color: self neighbourColor.
			mondrian interaction showEdge connectTo: [ :event | self highlightElementsRelatedWithDeveloper: event ].
			mondrian nodes: aCollection.
			mondrian layout grid.
	] ].
