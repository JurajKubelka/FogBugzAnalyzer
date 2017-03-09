adding
addFogBugzEvent: aFogBugzEvent 
	"Add aFogBugzEvent if it belongs to the event. 
	Return the same aFogBugzEvent if added; nil otherwise."
	^ (self event includesDate: aFogBugzEvent date)
			ifTrue: [ self events add: aFogBugzEvent ]
			ifFalse: nil