instance creation
newPopupTextBlock
	^ [ :assoc | assoc value size printString, 'x on ', assoc key printString ]