public
openedBetween: startDate and: endDate
	| issues |
	issues := (self splitDates: startDate and: endDate) flatCollect: [ :each |
		self fogbugz tracker getIssuesForQuery: each ]	.
	self fogbugz cases updateCases: issues. 