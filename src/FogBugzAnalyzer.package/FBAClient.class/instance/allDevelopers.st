accessing - computed
allDevelopers
	^ self cacheAt: #allDevelopers ifAbsentPut: [ | dateAndEvents |
		dateAndEvents := Bag new.
		self eventsDo: [ :event |
			dateAndEvents add: event username ].
		dateAndEvents ]