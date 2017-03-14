accessing
activities
	^ activities ifNil: [ activities := self client eventActivitiesWithInBetweenDays ]