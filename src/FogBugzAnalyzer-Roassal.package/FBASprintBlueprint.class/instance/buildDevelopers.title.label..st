building
buildDevelopers: aCollection title: titleString label: labelString
	mondrian shape box color: Color transparent; borderColor: self borderColor.
	aCollection title: titleString.
	aCollection ifNotEmpty: [ 
		mondrian node: aCollection forIt: [ 
			mondrian shape label.
			mondrian node: labelString.
			mondrian shape box color: Color black.
			mondrian nodes: aCollection.
			mondrian layout grid.
	] ].
