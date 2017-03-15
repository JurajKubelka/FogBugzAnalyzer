highlighting
highlightElementsRelatedWithCase: aFogBugzCase 
	^ OrderedCollection new 
			add: aFogBugzCase; 
			add: aFogBugzCase user;
			addAll: aFogBugzCase events; 
			yourself