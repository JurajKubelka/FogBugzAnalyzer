accessing
events
	^ events ifNil: [ events := FBAFogBugzEvents new ]