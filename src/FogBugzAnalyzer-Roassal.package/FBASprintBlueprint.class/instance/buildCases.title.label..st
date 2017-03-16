building
buildCases: aCollection title: titleString label: labelString 
	aCollection title: titleString.
	mondrian shape box color: Color transparent; borderColor: self borderColor.
	aCollection ifNotEmpty: [ 
		mondrian node: aCollection forIt: [ 
			mondrian shape label.
			mondrian node: labelString. 
			mondrian shape box 
				color: self boxColor;
				if: [ :case | case isIntroCase ] color: self introCaseColor.
			mondrian interaction 
				highlightNeighbors: [ :case | self highlightElementsRelatedWithCase: case ] 
				color: self neighbourColor.
			mondrian interaction showEdge connectTo: [ :event | self highlightElementsRelatedWithCase: event ].
			mondrian nodes: aCollection.
			mondrian layout grid.
	] ].
