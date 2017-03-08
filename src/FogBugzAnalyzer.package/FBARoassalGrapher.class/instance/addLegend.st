adding
addLegend
	| legend |
	legend := builder legend.
	legend view: builder view.
	legend addColor: self sprintColor text: 'Pharo Sprint Event'.
	legend addColor: self releaseColor text: 'Pharo/Moose Release'.
	legend addColor: self conferenceColor text: 'Pharo Days or ESUG Conference'.
	legend onDemand.