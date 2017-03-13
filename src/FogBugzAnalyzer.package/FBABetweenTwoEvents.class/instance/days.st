accessing - computed
days
	^ ((self endDate translateToUTC asDate - self startDate translateToUTC asDate) days) + 1