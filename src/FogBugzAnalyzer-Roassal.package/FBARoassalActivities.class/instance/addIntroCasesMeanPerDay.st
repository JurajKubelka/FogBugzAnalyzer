adding - datasets
addIntroCasesMeanPerDay
	| data |
	data := self newTimelineDataColored: self introCasesColor.
	data points: activities.
	data x: [ :activity | (activity midDate - self minDate) days ].
	data y: [ :activity | activity introCases size / activity days ].
	data label: 'Introduction Cases For New Sign-up Users / Activity Days'.
	builder add: data.