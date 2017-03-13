adding
addDecoratorWithValues: values color: aColor
	| decorator |
	decorator := RTVerticalLineDecorator new.
	decorator addAll: values.
	decorator shape line color: aColor.
	builder addDecorator: decorator.
	^ decorator