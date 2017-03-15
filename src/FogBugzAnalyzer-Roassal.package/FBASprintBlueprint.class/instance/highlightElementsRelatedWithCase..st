highlighting
highlightElementsRelatedWithCase: aFogBugzCase 
	^ view elementsFromModels: ((OrderedCollection with: aFogBugzCase with: aFogBugzCase user) addAll: aFogBugzCase events; yourself)