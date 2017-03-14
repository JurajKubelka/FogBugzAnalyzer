building
buildDevelopersOn: anFBAActivity
	| developers occasionalDevelopers newcommers regularDevelopers |
	mondrian shape box color: Color transparent; borderColor: Color gray.
	developers := anFBAActivity developers.
	developers ifEmpty: [ ^ self ].
	mondrian node: developers forIt: [ 
		mondrian shape box color: Color transparent; borderColor: Color black.
		regularDevelopers := self activities 
				regularDevelopers: developers for: anFBAActivity.
		regularDevelopers title: 'regular developers'.
		regularDevelopers ifNotEmpty: [ 
			mondrian node: regularDevelopers forIt: [ 
				mondrian shape label.
				mondrian node: 'Regular'.
				mondrian shape box color: Color black.
				mondrian nodes: regularDevelopers.
				mondrian layout grid.
		] ].
		mondrian shape box color: Color transparent; borderColor: Color black.
		occasionalDevelopers := self activities 
				occassionalDevelopers: developers for: anFBAActivity.
		occasionalDevelopers title: 'occasional developers'.
		occasionalDevelopers ifNotEmpty: [ 
			mondrian node: occasionalDevelopers forIt: [ 
				mondrian shape label.
				mondrian node: 'Occasional'.
				mondrian shape box color: Color black.
				mondrian nodes: occasionalDevelopers.
				mondrian layout grid.
		] ].
		mondrian shape box color: Color transparent; borderColor: Color black.
		newcommers := anFBAActivity newcommers.
		newcommers title: 'newcommers'.
		newcommers ifNotEmpty: [ 
			mondrian node: newcommers forIt: [ 
				mondrian shape label.
				mondrian node: 'Newcommers'.
				mondrian shape box color: Color black.
				mondrian nodes: newcommers.
				mondrian layout grid.
		] ].
		mondrian layout verticalLine.
	].
	^ view