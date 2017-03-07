adding
addImportantDatesOnAxisX
	| deco |
	deco := RTHorizontalValuesDecorator new.
	deco addAll: (sprints collect: [ :date | (date date - minDate) days ]).
	deco labelConversion: [ :value | minDate + value days ].
	deco labelRotation: -25.
	builder addDecorator: deco.
	^ deco