tests
testIncludesDate
	"Just check that every instance can response true or false."
	FBAFactory events do: [ :each | each includesDate: DateAndTime today ]