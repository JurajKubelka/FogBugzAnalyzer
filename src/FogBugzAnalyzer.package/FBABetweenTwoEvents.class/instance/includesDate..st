testing
includesDate: aDateAndTime 
	"Return true if it is the during the starting and ending days, does not matter timezone."
	^ (self startingDate asDate yyyymmdd = aDateAndTime asDate yyyymmdd)
		or: [ (self endingDate asDate yyyymmdd = aDateAndTime asDate yyyymmdd) or: [ 
				self startingDate < aDateAndTime and: [ aDateAndTime < self endingDate ] ] ]