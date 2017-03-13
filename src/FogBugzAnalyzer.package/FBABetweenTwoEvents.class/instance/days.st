accessing - computed
days
	^ ((self endingDate translateToUTC asDate - self startingDate translateToUTC asDate) days) + 1