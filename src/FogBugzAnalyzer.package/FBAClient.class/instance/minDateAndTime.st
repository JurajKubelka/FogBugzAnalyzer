accessing - computed
minDateAndTime
	^ (self cases detectMin: [ :case | case dateOpened ]) dateOpened asDate asDateAndTime