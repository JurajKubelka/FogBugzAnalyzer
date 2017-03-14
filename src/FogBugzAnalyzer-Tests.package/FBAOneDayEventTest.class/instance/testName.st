tests
testName
	event := FBAFactory events detect: [ :each | each startDate asDate = '2015-05-22' asDate ].
	self assert: event isSprint.
	self assert: event name equals: 'Sprint'.