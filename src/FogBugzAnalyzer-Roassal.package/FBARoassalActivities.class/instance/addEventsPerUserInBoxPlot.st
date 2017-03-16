adding - datasets
addEventsPerUserInBoxPlot
	^ activities collect: [ :activity | | data developers events |
		data := self newBoxPlotDataSet.
		developers := activity users.
		events := developers collect: [ :developer | 
			(activity eventsOfUser: developer) size / activity days ].
		data points: events.
		data model: activity.
		data boxShape 
			if: [ :item | activity event isSprint ] fillColor: [ self sprintColor ];
			if: [ :item | activity event isConference ] fillColor: [ self conferenceColor ];
			if: [ :item | activity event isRelease ] fillColor: [ self releaseColor ].
		builder add: data.
		data.
	].