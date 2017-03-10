adding events
otherdaysIn: aCollection
	"It returns collection of objects that represents days between existing events.
	It is supposed that my events are sorted according to date."
	| start |
	start := self first.
	self allButFirstDo: [ :end |
		aCollection add: (start to: end).
		start := end.
	 ].
	^ aCollection