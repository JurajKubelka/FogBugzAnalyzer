tests
testIsConference
	event := FBAFactory events detect: [ :each | each date asDate = '2015-07-13' asDate ].
	self assert: event isConference.