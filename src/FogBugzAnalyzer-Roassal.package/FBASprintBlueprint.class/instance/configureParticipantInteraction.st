configuration - interactions
configureParticipantInteraction
	mondrian interaction 
		highlightNeighbors: [ :developer | self 
			highlightElementsRelatedWithParticipant: developer ] 
		color: self neighbourColor.
	mondrian interaction showEdge 
		connectTo: [ :event | self highlightElementsRelatedWithParticipant: event ].
