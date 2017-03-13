testing
includesDate: aDateAndTime 
	"Return true if it is the during the starting and ending days, does not matter timezone."
	^ (self startDate asDate yyyymmdd = aDateAndTime asDate yyyymmdd)
		or: [ (self endDate asDate yyyymmdd = aDateAndTime asDate yyyymmdd) or: [ 
				self startDate < aDateAndTime and: [ aDateAndTime < self endDate ] ] ]