instance creation
newTimelineData
	| data |
	data := RTData new.
	data connectColor: Color blue.
	data x: [ :assoc | (assoc key - minDate) days ].
	^ data