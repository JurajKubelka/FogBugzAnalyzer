adding - datasets
addUserEventsPerActivityWithTimeline
	^ self addEventsPerUserInBoxPlot do: [ :dataSet |
		dataSet x: [ :anActivity | (anActivity midDate - self minDate) days ].
	].