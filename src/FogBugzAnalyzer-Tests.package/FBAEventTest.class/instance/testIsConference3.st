tests
testIsConference3
	event := FBAFactory events detect: [ :each | each date asDate = '2015-05-22' asDate ].
	self deny: event isConference.