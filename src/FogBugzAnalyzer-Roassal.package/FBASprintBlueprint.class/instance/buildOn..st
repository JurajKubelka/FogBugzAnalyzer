building
buildOn: anFBAActivity
	mondrian shape box 
		color: Color transparent;
		borderColor: Color black;
		if: [ anFBAActivity isSprint ] borderColor: Color green;
		if: [ anFBAActivity isRelease ] borderColor: Color red;
		if: [ anFBAActivity isConference ] borderColor: Color yellow.
	mondrian node: anFBAActivity forIt: [ | release |
		mondrian shape label color: Color black.
		mondrian node: anFBAActivity shortLabel.
		release := self activities releaseBefore: anFBAActivity.
		release ifNotNil: [ | daysBeforeRelease |
			mondrian shape box color: Color transparent.
			mondrian node: release forIt: [ 
				daysBeforeRelease := (release startDate - anFBAActivity endDate) days asString.
				mondrian node: release.
				mondrian shape label color: Color black.
				mondrian node: daysBeforeRelease, ' days before release'.
				mondrian layout horizontalLine center.
		] ].
		self buildDevelopersOn: anFBAActivity.
		self buildEventsOn: anFBAActivity.
		mondrian layout verticalLine.
	].
	^ view