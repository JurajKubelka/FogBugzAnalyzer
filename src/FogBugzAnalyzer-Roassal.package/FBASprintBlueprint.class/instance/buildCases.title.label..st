building
buildCases: aCollection title: titleString label: labelString 
	aCollection title: titleString.
	mondrian shape box color: Color transparent; borderColor: Color black.
	aCollection ifNotEmpty: [ 
		mondrian node: aCollection forIt: [ 
			mondrian shape label.
			mondrian node: labelString. 
			mondrian shape box color: Color black.
			mondrian nodes: aCollection.
			mondrian layout grid.
	] ].
