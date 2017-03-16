building
buildLegendIn: aRTView
	RTLegendBuilder new 
		view: aRTView;
		addColoredText: 'Participant' color: self textColor;
		addRectanglePolymetricWidth: '# of events' height: '# of participations' box: '';
		build.
	^ aRTView