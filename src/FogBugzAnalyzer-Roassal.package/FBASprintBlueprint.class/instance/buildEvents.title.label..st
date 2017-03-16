building
buildEvents: aCollection title: titleString label: labelString 
	aCollection title: titleString.
	mondrian shape box color: Color transparent; borderColor: self borderColor.
	aCollection ifNotEmpty: [ 
		mondrian node: aCollection forIt: [ 
			mondrian shape label.
			mondrian node: labelString. 
			mondrian shape box 
				color: self boxColor;
				if: [ :event | event description isEmpty ] color: Color red;
				if: [ :event | event case isIntroCase ] color: self introCaseColor.
			mondrian interaction 
				highlightNeighbors: [ :event | self highlightElementsRelatedWithEvent: event ] 
				color: self neighbourColor.
			mondrian interaction showEdge connectTo: [ :event | self highlightElementsRelatedWithEvent: event ].
			mondrian nodes: aCollection.
			mondrian layout grid.
	] ].
