accessing - computed
days
	(self startDate isNil or: [ self endDate isNil ]) ifTrue: [ ^ 0 ].
	^ ((self endDate translateToUTC asDate - self startDate translateToUTC asDate) days) + 1