adding - datasets
addDeveloperEventsPerActivityWithTimeline
	^ self addDeveloperEventsBoxPlot do: [ :dataSet |
		dataSet x: [ :anActivity | (anActivity midDate - self minDate) days ].
	].