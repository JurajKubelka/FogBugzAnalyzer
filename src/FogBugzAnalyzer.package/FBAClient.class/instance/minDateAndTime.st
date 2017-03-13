accessing - computed
minDateAndTime
	^ (self allCases detectMin: [ :case | case dateOpened ]) dateOpened asDate asDateAndTime