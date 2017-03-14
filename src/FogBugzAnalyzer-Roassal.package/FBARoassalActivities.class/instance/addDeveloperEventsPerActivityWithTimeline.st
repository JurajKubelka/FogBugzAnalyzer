adding - datasets
addDeveloperEventsPerActivityWithTimeline
	^ self addDeveloperEventsPerActivity do: [ :dataSet |
		dataSet x: [ :anActivity | (anActivity midDate - self minDate) days ].
	].