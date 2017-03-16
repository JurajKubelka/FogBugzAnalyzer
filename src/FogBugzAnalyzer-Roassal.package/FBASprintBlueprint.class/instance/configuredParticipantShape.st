configuration - shapes
configuredParticipantShape
	participantShape 
		ifNil: [ 			
			mondrian shape box 
				color: Color black;
				width: [ :participant | participant events size ];
				height: [ :participant | (self activitiesWithParticipant: participant) size ];
				yourself ]
		ifNotNil: [ mondrian shapeBuilder: participantShape ].
