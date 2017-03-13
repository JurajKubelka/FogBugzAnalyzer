tests
testIsConference
	event := FBAFactory events detect: [ :each | each startDate asDate = '2015-07-13' asDate ].
	self assert: event isConference.