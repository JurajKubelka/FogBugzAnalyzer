tests
testIsConference4
	event := FBAFactory events detect: [ :each | each date asDate = '2015-01-29' asDate ].
	self assert: event isConference.