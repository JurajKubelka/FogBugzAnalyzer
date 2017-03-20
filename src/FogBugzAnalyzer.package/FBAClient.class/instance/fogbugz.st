accessing
fogbugz
	^ fogbugz ifNil: [ fogbugz := FogBugzClient new ]