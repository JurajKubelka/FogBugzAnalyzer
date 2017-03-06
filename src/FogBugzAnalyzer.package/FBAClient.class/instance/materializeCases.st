initalize-release
materializeCases
	| cases |
	self casesFile exists ifFalse: [ ^ self inform: 'there are no serialized cases' ].
	cases := self casesFile readStreamDo: [ :stream | STON fromStream: stream ].
	self fogbugz cases updateCases: cases