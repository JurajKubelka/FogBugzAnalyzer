accessing - computed
maxDateAndTime
	^ (self cases detectMax: [ :case | case lastModification ]) lastModification asDate asDateAndTime