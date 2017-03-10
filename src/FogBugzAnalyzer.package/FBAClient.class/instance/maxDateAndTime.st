accessing - computed
maxDateAndTime
	^ (self allCases detectMax: [ :case | case lastModification ]) lastModification