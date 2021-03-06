highlighting
highlightElementsRelatedWithParticipant: aFBAParticipant 
	| set |
	set := Set new.
	set add: aFBAParticipant.
	self view elements do: [ :element | 
		(element model class = FogBugzCase and: [
			element model includesEventOfUser: aFBAParticipant user ]) 
				ifTrue: [ set add: element model ].
	].
	^ set