highlighting
highlightInfoRelatedWithParticipant: aFBAParticipant 
	| set |
	set := Set new.
	set add: aFBAParticipant.
	self view elements do: [ :element | 
		(element model class = FBAParticipant and: [
			element model user = aFBAParticipant user ]) 
				ifTrue: [ set add: element model ].
		(element model class = FogBugzCase and: [
			element model includesEventOfUser: aFBAParticipant user ]) 
				ifTrue: [ set add: element model ].
		(element model class = FogBugzEvent and: [ 
			element model user = aFBAParticipant user ]) ifTrue: [ set add: element model ].
	].
	^ set