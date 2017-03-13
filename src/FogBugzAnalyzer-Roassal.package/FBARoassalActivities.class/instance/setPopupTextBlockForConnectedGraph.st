initialization
setPopupTextBlockForConnectedGraph
	self popupTextBlock: [ :activityActivityAssoc | 
			| from to |
			from := activityActivityAssoc key.
			to := activityActivityAssoc value.
			from printString, String cr,
			to printString ]