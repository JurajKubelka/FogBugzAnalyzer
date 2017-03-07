initalize-release
fixCasesOfEvents
	"Each event keeps corresponding parent case. 
	Right now it is an extra object that we can replace with the right one.
	Such modification simplifies navigation."
	self cases do: [ :eachTopic | 
		eachTopic case events do: [ :eachEvent | 
			eachEvent case: eachTopic case ] ]