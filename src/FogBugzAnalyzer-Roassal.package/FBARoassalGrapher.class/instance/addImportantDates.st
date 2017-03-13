adding
addImportantDates
	sprints := FBAFactory events select: #isSprint.
	self addDecoratorWithDates: sprints color: self sprintColor.
	releases := FBAFactory events select: #isRelease.
	self addDecoratorWithDates: releases color: self releaseColor.
	conferences := FBAFactory events select: #isConference.
	self addDecoratorWithDates: conferences color: self conferenceColor