adding
addImportantDatesOnAxisX
	| deco |
	deco := RTHorizontalValuesDecorator new.
	deco addAll: (sprints collect: [ :date | (date date - self minDate) days ]).
	deco labelConversion: [ :value | (self minDate + value days) asDate ].
	deco labelRotation: -25.
	builder addDecorator: deco.
	^ deco