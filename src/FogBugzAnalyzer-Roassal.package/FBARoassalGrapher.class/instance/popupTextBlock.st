accessing
popupTextBlock
	^ popupTextBlock ifNil: [ popupTextBlock := self newPopupTextBlock ]