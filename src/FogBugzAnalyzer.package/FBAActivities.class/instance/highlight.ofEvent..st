highlighting
highlight: stringOrText ofEvent: aFBAActivity 
	| text |
	text := stringOrText asText.
	aFBAActivity event isSprint ifTrue: [ ^ text allBold; makeAllColor: Color green ].
	aFBAActivity event isRelease ifTrue: [ ^ text allBold; makeAllColor: Color red ].
	aFBAActivity event isConference ifTrue: [ ^ text allBold; makeAllColor: Color black ].
	^ text allItalic