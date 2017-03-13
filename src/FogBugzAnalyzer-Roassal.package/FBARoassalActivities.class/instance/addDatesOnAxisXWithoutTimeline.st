adding
addDatesOnAxisXWithoutTimeline
	| deco |
	deco := RTHorizontalValuesDecorator new.
	deco addAll: (1 to: activities size).
	deco labelConversion: [ :index | 
		(activities at: index) event isSprint ifTrue: [ (activities at: index) date asDate ] ifFalse: [ '' ] ].
	deco labelRotation: -25.
	builder addDecorator: deco.
	^ deco