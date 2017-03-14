tests
testIsConference2
	event := FBAFactory events detect: [ :each | each startDate asDate = '2015-06-05' asDate ].
	self deny: event isSprint.