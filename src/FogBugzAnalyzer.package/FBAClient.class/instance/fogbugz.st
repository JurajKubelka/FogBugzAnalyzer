accessing
fogbugz
	^ fogbugz ifNil: [ fogbugz := GCFogBugz new ]