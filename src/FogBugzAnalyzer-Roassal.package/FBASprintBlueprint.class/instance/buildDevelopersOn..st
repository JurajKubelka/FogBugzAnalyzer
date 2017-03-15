building
buildDevelopersOn: anFBAActivity
	| developers occasionalDevelopers newcommers regularDevelopers |
	mondrian shape box color: Color transparent; borderColor: self borderColor.
	developers := anFBAActivity developers.
	developers ifEmpty: [ ^ self ].
	mondrian node: developers forIt: [ 
		regularDevelopers := self activities 
				regularDevelopers: developers for: anFBAActivity.
		self buildDevelopers: regularDevelopers title: 'regular developers' label: 'Regular'.
		occasionalDevelopers := self activities 
				occassionalDevelopers: developers for: anFBAActivity.
		self buildDevelopers: occasionalDevelopers title: 'occasional developers' label: 'Occasional'.
		newcommers := anFBAActivity newcommers.
		self buildDevelopers: newcommers title: 'newcommers' label: 'Newcommers'.
		mondrian layout verticalLine.
	].
	^ view