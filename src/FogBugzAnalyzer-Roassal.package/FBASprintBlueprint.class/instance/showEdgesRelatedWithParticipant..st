highlighting
showEdgesRelatedWithParticipant: aFBAParticipant 
	| set |
	set := Set new.
	set add: aFBAParticipant.
	self view elements do: [ :element | 
		(element model class = FBAParticipant and: [
			element model user = aFBAParticipant user ]) 
				ifTrue: [ set add: element model ].
	].
	^ set