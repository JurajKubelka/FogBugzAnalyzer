adding
addImportantDates
	sprints := FBADateFactory dates select: #isSprint.
	self addDecoratorWithDates: sprints color: self sprintColor.
	releases := FBADateFactory dates select: #isRelease.
	self addDecoratorWithDates: releases color: self releaseColor.
	conferences := FBADateFactory dates select: #isConference.
	self addDecoratorWithDates: conferences color: self conferenceColor