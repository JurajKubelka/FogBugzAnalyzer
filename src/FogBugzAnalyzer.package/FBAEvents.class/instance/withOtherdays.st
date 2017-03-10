adding events
withOtherdays
	"It adds objects that represents days between existing events.
	It is supposed that my events are sorted according to date."
	| collection |
	collection := self otherdaysIn: self class new.
	collection addAll: self.
	collection sort: [ :a :b | a isBefore: b ].
	^ collection