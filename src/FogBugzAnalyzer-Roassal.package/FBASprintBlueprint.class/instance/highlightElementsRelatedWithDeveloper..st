highlighting
highlightElementsRelatedWithDeveloper: aFogBugzUser 
	| set |
	set := Set new.
	set add: aFogBugzUser.
	self view elements do: [ :element | 
		(element model class = FogBugzCase and: [ 
			element model user = aFogBugzUser ]) ifTrue: [ set add: element model ].
		(element model class = FogBugzEvent and: [ 
			element model user = aFogBugzUser ]) ifTrue: [ set add: element model ].
	].
	^ set