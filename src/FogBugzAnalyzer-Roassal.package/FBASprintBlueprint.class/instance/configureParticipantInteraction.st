configuration - interactions
configureParticipantInteraction
	mondrian interaction 
		highlightNeighbors: [ :developer | self 
			highlightInfoRelatedWithParticipant: developer ] 
		color: self neighbourColor.
	mondrian interaction showEdge 
		connectTo: [ :event | self showEdgesRelatedWithParticipant: event ].
