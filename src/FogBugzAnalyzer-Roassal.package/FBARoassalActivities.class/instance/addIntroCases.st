adding - datasets
addIntroCases
	| data |
	data := self newTimelineDataColored: self introCasesColor.
	data points: activities.
	data x: [ :activity | (activity midDate - self minDate) days ].
	data y: [ :activity | activity introCases size ].
	data label: 'Number of Introduction Cases For New Sign-up Users Per Activity'.
	builder add: data.