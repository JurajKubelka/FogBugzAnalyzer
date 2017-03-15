highlighting
highlightElementsRelatedWithDeveloper: aFogBugzUser 
	^ Set streamContents: [ :stream |
			stream << aFogBugzUser.
			self view elements do: [ :element | 
				(element model class = FogBugzCase and: [ 
					element model user = aFogBugzUser ]) ifTrue: [ stream nextPut: element model ].
				(element model class = FogBugzEvent and: [ 
					element model user = aFogBugzUser ]) ifTrue: [ stream nextPut: element model ].
		] ]