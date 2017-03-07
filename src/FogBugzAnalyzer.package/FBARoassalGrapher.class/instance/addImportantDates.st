adding
addImportantDates
	sprints := FBADateFactory dates select: #isSprint.
	self addDecoratorWithDates: sprints color: (Color green).
	releases := FBADateFactory dates select: #isRelease.
	self addDecoratorWithDates: releases color: (Color red).
	conferences := FBADateFactory dates select: #isConference.
	self addDecoratorWithDates: conferences color: (Color black).
