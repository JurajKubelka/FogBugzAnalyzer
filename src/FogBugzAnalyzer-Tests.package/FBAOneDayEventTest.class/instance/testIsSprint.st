tests
testIsSprint
	event := FBAFactory events detect: [ :each | each startDate asDate = '2015-07-13' asDate ].
	self deny: event isSprint.