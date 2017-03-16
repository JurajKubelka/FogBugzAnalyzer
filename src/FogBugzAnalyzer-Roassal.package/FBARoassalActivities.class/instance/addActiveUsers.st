adding - datasets
addActiveUsers
	| data |
	data := self newTimelineDataColored: self developerColor.
	data points: activities.
	data x: [ :activity | (activity midDate - self minDate) days ].
	data y: [ :activity | activity users size ].
	data label: 'Users per Activity.'.
	builder add: data.