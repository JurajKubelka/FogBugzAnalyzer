graphs
introCasesPerDay
	<graphOrder: 1 filename: 'intro-cases-per-day.png'>
	^ (FBARoassalClient client: self client)
			computeUserEventsOfRealCasesPerDay;
			beStatic;
			addLegend: 'Introduction Cases For New Sign-up Users per Day';
			addImportantDates;
			addImportantDatesOnAxisX;
			addIntroCases;
			configureAxisXAndY: 'Number of Intro Cases In One Day';
			build.