# FogBugzAnalyzer
FogBugz activity analysis support for Pharo http://fogbugz.com http://pharo.org


```
client := FBAClient new.
client login: 'your.email@domain.com' password: 'your password'.
client openedBetween: '01-Jan-2015' asDateAndTime and: DateAndTime tomorrow.
client fixCasesOfEvents "events should keep real cases, let's fix it".
```

![all-events-per-day.png](assets/img/all-events-per-day.png)

```
(FBARoassalGrapher client: client)
	computeEventsPerDay;
	beStatic;
	addLegend: 'All developer events (actions) per day';
	timelineEventsPerDay.
```

![all-cases-interacted-per-day.png](assets/img/all-cases-interacted-per-day.png)

```
(FBARoassalGrapher client: client)
	computeEventsPerDay;
	beStatic;
	addLegend: 'All cases interacted with per day';
	timelineCasesInteractedWithPerDay.
```

![active-developers-per-day.png](assets/img/active-developers-per-day.png)

```
(FBARoassalGrapher client: client)
	computeEventsPerDay;
	beStatic;
	addLegend: 'Active developers per day';
	timelineActiveDevelopesPerDay.
```

![event-types-per-day.png](assets/img/event-types-per-day.png)

```
(FBARoassalGrapher client: client)
	computeEventsPerDay;
	beStatic;
	addLegend: 'Number of event (action) types per day';
	timelineEventActionsPerDay.
```

![specific-events-per-day.png](assets/img/specific-events-per-day.png)

```
(FBARoassalGrapher client: client)
	computeEventsPerDay;
	beStatic;
	addLegend: 'Open/Closed/Fixed/Resolved events per day';
	addImportantDates;
	addImportantDatesOnAxisX;
	timelineDataSelector: #newTimelineDataConnectedDotShapeColored:;
	addOpenedEventsPerDay;
	addClosedEventsPerDay;
	"addReactivatedEventsPerDay;"
	"addReopenedEventsPerDay;"
	addResolvedEventsPerDay;
	addResolvedFixReviewNeededEventsPerDay;
	"addAssignedEventsPerDay;"
	"addEditedEventsPerDay;"
	configureAxisXAndYForEvents;
	build
```
