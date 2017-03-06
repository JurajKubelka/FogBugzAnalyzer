accessing
cases
	^ self client ifNotNil: #realCases ifNil: #()