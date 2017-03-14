tests
testIsSprint2
	event := FBAFactory events detect: [ :each | each midDate asDate = '2015-06-05' asDate ].
	self deny: event isSprint.