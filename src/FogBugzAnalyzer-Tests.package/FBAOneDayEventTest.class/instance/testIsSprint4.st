tests
testIsSprint4
	event := FBAFactory events detect: [ :each | each midDate asDate = '2015-01-29' asDate ].
	self deny: event isSprint.