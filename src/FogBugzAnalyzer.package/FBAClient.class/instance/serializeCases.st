initalize-release
serializeCases
	| cases file |
	cases := self fogbugz cases collect: #case as: Array.
	file := self casesFile.
	file ensureDelete.
	file writeStreamDo: [ :stream | STON put: cases onStream: stream ]