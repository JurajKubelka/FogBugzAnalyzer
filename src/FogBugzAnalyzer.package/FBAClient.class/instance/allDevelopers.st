accessing - computed
allDevelopers
	^ self cacheAt: #allDevelopers ifAbsentPut: [ | dateAndEvents |
		dateAndEvents := Bag new.
		self userEventsOfRealCasesDo: [ :event |
			dateAndEvents add: event username ].
		dateAndEvents ]