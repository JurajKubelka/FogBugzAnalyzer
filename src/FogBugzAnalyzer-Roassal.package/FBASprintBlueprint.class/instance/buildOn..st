building
buildOn: anFBAActivity
	mondrian shape box color: Color transparent; borderColor: Color black.
	mondrian node: anFBAActivity forIt: [ 
		mondrian shape label color: Color black.
		mondrian node: anFBAActivity shortLabel.
		mondrian shape box color: Color transparent; borderColor: Color gray.
		mondrian node: 'Developers' forIt: [ 
			mondrian shape box color: Color transparent; borderColor: Color black.
			mondrian node: 'Regular Developers' forIt: [ 
				mondrian shape label.
				mondrian node: 'Regular'.
				mondrian shape box color: Color black.
				mondrian nodes: (self activities 
					regularDevelopers: anFBAActivity developers for: anFBAActivity)
			].
			mondrian shape box color: Color transparent; borderColor: Color black.
			mondrian node: 'Occasional Developers' forIt: [ 
				mondrian shape label.
				mondrian node: 'Occasional'.
				mondrian shape box color: Color black.
				mondrian nodes: (self activities 
					occassionalDevelopers: anFBAActivity developers for: anFBAActivity)
			].
			mondrian shape box color: Color transparent; borderColor: Color black.
			mondrian node: 'New Developers' forIt: [ 
				mondrian shape label.
				mondrian node: 'Newcommers'.
				mondrian shape box color: Color black.
				mondrian nodes: anFBAActivity newcommers.
			].
			mondrian layout verticalLine.
		].
		mondrian shape box color: Color transparent; borderColor: Color black.
		mondrian node: 'Cases' forIt: [ 
			mondrian shape box color: Color transparent; borderColor: Color black.
			mondrian node: 'Open Cases' forIt: [ 
				mondrian shape label.
				mondrian node: 'Open'. 
				mondrian shape box color: Color black.
				mondrian nodes: anFBAActivity openedEvents.
			].
			mondrian shape box color: Color transparent; borderColor: Color black.
			mondrian node: 'Edited Cases' forIt: [ 
				mondrian shape label.
				mondrian node: 'Edited'. 
				mondrian shape box color: Color black.
				mondrian nodes: anFBAActivity editedEvents.
				mondrian layout grid.
			].
			mondrian shape box color: Color transparent; borderColor: Color black.
			mondrian node: 'Fixed Cases' forIt: [ 
				mondrian shape label.
				mondrian node: 'Fixed'.
				mondrian shape box color: Color black.
				mondrian nodes: anFBAActivity resolvedFixReviewNeededEvents.
				mondrian layout grid.
			].
			mondrian shape box color: Color transparent; borderColor: Color black.
			mondrian node: 'Resolved Cases' forIt: [ 
				mondrian shape label.
				mondrian node: 'Resolved'. 
				mondrian shape box color: Color black.
				mondrian nodes: anFBAActivity otherResolvedEvents.
				mondrian layout grid.
			].
			mondrian shape box color: Color transparent; borderColor: Color black.
			mondrian node: 'Closed Cases' forIt: [ 
				mondrian shape label.
				mondrian node: 'Closed'. 
				mondrian shape box color: Color black.
				mondrian nodes: anFBAActivity closedEvents.
				mondrian layout grid.
			].
			mondrian layout grid.
		].
		mondrian layout verticalLine.
	].
	^ mondrian