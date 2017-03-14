building
buildSuch: aBlock 
	mondrian shape box color: Color transparent; borderColor: Color black.
	mondrian node: 'Activities' forIt: [ 
		self activities do: [ :eachActivity | 
			(aBlock value: eachActivity) ifTrue: [ self buildOn: eachActivity ] ].
		mondrian layout grid.
	].
	^ view