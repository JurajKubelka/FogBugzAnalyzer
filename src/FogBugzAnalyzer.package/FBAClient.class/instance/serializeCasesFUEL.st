initalize-release
serializeCasesFUEL
	| cases file |
	cases := self fogbugz cases collect: #case as: Array.
	file := self casesFileFUEL.
	file ensureDelete.
	FLSerializer serialize: cases toFileNamed: file fullName.