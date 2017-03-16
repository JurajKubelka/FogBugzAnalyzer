graphs
developersPerActivityWithout2017
	<graphOrder: 1 filename: 'developers-per-activity-without-2017.png'>
	^ (FBARoassalActivities activities: (self activitiesWithUserEventsOfRealCases 
			reject: [ :activity | 
				(activity includesDate: '2017-01-27' asDateAndTime) or: [ 
					activity includesDate: '2017-03-03' asDateAndTime ] ]))
			beStatic;
			addUserEventsPerActivityWithoutTimeline;
			addDatesOnAxisXWithoutTimeline;
			configureAxisXAndY: 'Developer Events per Activity without Apr 27 and March 3 2017';
			build.
