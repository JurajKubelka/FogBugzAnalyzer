initialization
setPopupTextBlockForConnectedGraph
	self popupTextBlock: [ :fromToAssoc | 
			| from to |
			from := fromToAssoc key.
			to := fromToAssoc value.
			from value size printString, 'x on ', from key printString, ' and ', String cr,
			to value size printString , 'x on ', to key printString ]