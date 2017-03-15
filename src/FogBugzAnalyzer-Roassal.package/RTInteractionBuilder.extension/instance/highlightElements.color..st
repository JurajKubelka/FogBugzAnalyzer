*FogBugzAnalyzer-Roassal
highlightElements: elementsOrABlock color: aColorOrABlock
	"Highlight the elements, elementsOrABlock may either be a block (which takes as argument the selected element and return a list of elements"
	interactions add: [ :element | element @ (RTHighlightable new
		highlightElements: (elementsOrABlock rtValue: element model);
		highlightedColor: aColorOrABlock) ]