initalize-release
materializeCasesFUEL
	| cases |
	self casesFileFUEL exists ifFalse: [ ^ self inform: 'there are no serialized cases' ].
	cases := FLMaterializer materializeFromFileNamed: self casesFileFUEL fullName.
	self fogbugz cases updateCases: cases