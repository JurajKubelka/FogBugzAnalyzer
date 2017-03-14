adding - datasets
addActiveDevelopers
	| data |
	data := self newTimelineDataColored: self developerColor.
	data points: activities.
	data x: [ :activity | (activity midDate - self minDate) days ].
	data y: [ :activity | activity developers size ].
	data label: 'Developers per Activity.'.
	builder add: data.