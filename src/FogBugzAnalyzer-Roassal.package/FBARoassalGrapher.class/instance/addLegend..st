adding
addLegend: titleString
	| legend |
	legend := builder legend.
	legend view: builder view.
	titleString ifNotNil: [ legend addColoredText: titleString color: Color black ].
	legend addColor: self sprintColor text: 'Pharo Sprint Event'.
	legend addColor: self releaseColor text: 'Pharo/Moose Release'.
	legend addColor: self conferenceColor text: 'Pharo Days or ESUG Conference'.
	onDemand ifTrue: [ legend onDemand ].