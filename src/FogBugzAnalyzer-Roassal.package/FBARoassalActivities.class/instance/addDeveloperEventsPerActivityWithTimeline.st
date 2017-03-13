adding - datasets
addDeveloperEventsPerActivityWithTimeline
	^ self addDeveloperEventsPerActivity do: [ :dataSet |
		dataSet x: [ :anActivity | (anActivity date - self minDate) days ].
	].